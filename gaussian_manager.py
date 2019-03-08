"""Main user interface for GM, used as a script to submit a list of calcs to run on a list of mols"""

import argparse
from GaussianManager.src import calculations, exceptions, manager, utils
import os
import time
from typing import Type, List, Union

def run(mols: List, out: str, calcs: List, multi: str):
    """Main method of gaussian_manager interface for creating GM objects and running calculations
        on provided mols

        Args:
            mols (list): The list of mol filepaths to run calcs on
            out (str): Root dir where GM will add files and mol dirs to
            calcs (list): List of calculation objects to run on provided mols
            multi (str): Multiplicity of mols, currently all mols must have the same charge/multiplicity
    """

    start = time.time()
    out = utils.sanitize_path(out, add_slash=True)
    exp_log = out + 'log.txt'

    for mol in mols:
        mol_name, geom_dir, mol_log = _get_mol_specs(mol, out)

        for calc in calcs:
            mol_in, mol_out = _get_in_out(calc, geom_dir, mol)
            gm = _get_gm(out, mol_name, mol_in, mol_out, multi, calc)
            try:
                gm.run_manager()
            except exceptions.GaussianManagerError as e:
                msg = ('GM encountered unresolvable error/code '
                       + '({}) running {} {} on {}').format(e.args[0], calc.method, calc.name,
                                                            mol_name)
                utils.log_error(mol_log, msg, verbose=True)
                utils.log_error(exp_log, msg, verbose=False)
            finally:
                _record_time(start, mol_name, mol_log, calc)

        _record_time(start, mol_name, exp_log)

def _get_args():
    """Get args from command line"""

    parser = argparse.ArgumentParser(description=('Main user interface for GM, used to submit a '
                                                  + 'list of calcs to run on a list of mols'))
    parser.add_argument('-i', '--input-mol-path', nargs='+', help=('Directory containing all molecules to '
                                                         + 'run calculation, or filepaths of '
                                                         + 'individual molecule xyz files'))
    parser.add_argument('--multi', default='-1 1',
                        help=('Multiplicity of mols. Currently, all submitted mols must have the '
                             + 'same charge/multiplicity'))
    parser.add_argument('-o', '--output-root', help=('Root directory of the experiment where log '
                                                    + 'files and mol directories are written to'))
    parser.add_argument('-c', '--calcs', nargs='+', help=('List of calc keywords in order of how'
                                                          + ' they should be run. Possible keywords'
                                                          + ' include (tsopt), (irc_rev), (irc_fwd),'
                                                          + ' (qst3), (gopt_rev), and (gopt_fwd)'),
                        default=['tsopt', 'irc_rev', 'gopt_rev', 'irc_fwd', 'gopt_fwd'])
    parser.add_argument('-m', '--methods', nargs='+', default=['mp2'],
                        help=('List of theory levels to run the calc list at for each mol, typically'
                              + ' only a single item in this list, as the entire calc list is run'
                              + ' for each level of theory specified'))
    parser.add_argument('-b', '--basis-sets', nargs='+', default=['aug-cc-PVDZ'],
                        help=('Basis set for calcs. len(methods) == len(basis_sets) must be True'))

    return parser.parse_args()

def _sanit_molpath(paths):
    """Construct mol list from list of paths or dir"""

    mols = []
    for mol in paths:
        if os.path.isfile(mol):
            mols.append(mol)
        else:
            for n, _, files in os.walk(mol):
                mols = [utils.sanitize_path(n, add_slash=True)
                        + f for f in files if os.path.splitext(f)[-1] == '.xyz']

    return mols

def _resolve_calcs(kws, methods, basis_sets):

    calcs = []
    for method, basis in zip(methods, basis_sets):
        for kw in kws:
            if kw == 'tsopt':
                calcs.append(calculations.TsoptCalc(method, basis, goal='ts'))
            elif kw == 'qst3':
                calcs.append(calculations.TsoptCalc(method, basis, goal='qst3'))
            elif kw == 'irc_rev':
                calcs.append(calculations.IrcCalc(method, basis, direction='reverse'))
            elif kw == 'irc_fwd':
                calcs.append(calculations.IrcCalc(method, basis, direction='forward'))
            elif kw == 'gopt_rev':
                calcs.append(calculations.GoptCalc(method, basis, direction='reverse'))
            elif kw == 'gopt_fwd':
                calcs.append(calculations.GoptCalc(method, basis, direction='forward'))

    return calcs

def _get_in_out(calc, geom_dir, mol):

    mol_name = os.path.basename(mol)
    mol_in = geom_dir + utils.insert_suffix(mol_name, '_ts')

    if calc.name == 'ts' or calc.name == 'qst3':
        mol_in = utils.copy_file(mol, mol_in)
        mol_out = mol_in
    elif calc.name == 'gopt_reverse':
        mol_in = geom_dir + utils.insert_suffix(mol_name, '_reactant')
        mol_out = mol_in
    elif calc.name == 'gopt_forward':
        mol_in = geom_dir + utils.insert_suffix(mol_name, '_product')
        mol_out = mol_in

    elif calc.name == 'irc_reverse':
        mol_out = geom_dir + utils.insert_suffix(mol_name, '_reactant')
    elif calc.name == 'irc_forward':
        mol_out = geom_dir + utils.insert_suffix(mol_name, '_product')

    return mol_in, mol_out

def _get_gm(out, mol_name, mol_in, mol_out, multi, calc):

    gm_dir = out + '{}/{}/{}/'.format(mol_name, calc.method, calc.name)
    gm = manager.GaussianManager.factory(gm_dir,
                                            mol_in,
                                            mol_out,
                                            multi,
                                            calc)

    return gm

def _get_mol_specs(mol, out):

    mol_name = utils.get_file_name(mol)
    mol_dir = out + '{}/'.format(mol_name)
    geom_dir = mol_dir + 'geometries/'
    mol_log = mol_dir + 'log.txt'

    return mol_name, geom_dir, mol_log

def _record_time(start, mol_name, log, calc=None):

    if calc is None:
        msg = 'total calc time for {} is {} s'.format(mol_name, str(int(time.time() - start)))
    else:
        msg = '{} {} on {} took {} s'.format(calc.method,
                                             calc.name,
                                             mol_name,
                                             str(int(time.time() - start)))
    utils.log_error(log, msg)

if __name__ == "__main__":

    args = _get_args()

    mols = _sanit_molpath(args.input_mol_path)
    out = args.output_root
    calcs = _resolve_calcs(args.calcs, args.methods, args.basis_sets)
    multi = args.multi

    run(mols, out, calcs, multi)
