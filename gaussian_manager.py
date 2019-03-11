"""Main user interface for GM, used as a script to submit a list of calcs to run on a list of mols"""

import argparse
from GaussianManager.src import calculations, exceptions, manager, utils
import math
import os
import time
from typing import Type, List, Union

def run(mols: List, out: str, calcs: List, multi: str):
    """Main method of gaussian_manager interface for creating GM objects and running calculations
        on provided list of mols

        Args:
            mols (list): The list of mol filepaths to run calcs on
            out (str): Root dir where GM will add files and mol dirs to
            calcs (list): List of calculation objects to run on provided mols
            multi (str): Multiplicity of mols, currently all mols must have the same charge/multiplicity
    """

    out = utils.sanitize_path(out, add_slash=True)
    exp_log = out + 'log.txt'

    #Loop through mols, apply the same calcs for every mol
    for mol in mols:
        m_start = time.time()
        mol_name, geom_dir, mol_log = _get_mol_specs(mol, out)
        utils.make_dir(geom_dir)

        #Loop through calculation objects created from user/default specifications
        for calc in calcs:
            c_start = time.time()
            mol_in, mol_out = _get_in_out(calc, geom_dir, mol)
            gm = _get_gm(out, mol_name, mol_in, mol_out, multi, calc)
            try:
                gm.run_manager()

            #Raised if GM cannot solve any errors thrown by gaussian
            except exceptions.GaussianManagerError as e:
                msg = ('GM encountered unresolvable error/code '
                       + '({}) running {} {} on {}').format(e.args[0], calc.method, calc.name,
                                                            mol_name)

                #Log to both the mol and main exp dirs
                utils.log_error(mol_log, msg, verbose=True)
                utils.log_error(exp_log, msg, verbose=False)
            finally:
                #Log time of calc to mol dir
                _record_time(c_start, mol_name, mol_log, calc)

        #Log time of entire mol calc to exp dir
        _record_time(m_start, mol_name, exp_log)

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
                        default=['single'])
    parser.add_argument('-m', '--methods', nargs='+', default=['mp2'],
                        help=('List of theory levels to run the calc list at for each mol, typically'
                              + ' only a single item in this list, as the entire calc list is run'
                              + ' for each level of theory specified'))
    parser.add_argument('-b', '--basis-sets', nargs='+', default=['cc-PVDZ'],
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
    """Checks provided calcs args to create list of calculation objects"""

    calcs = []
    for method, basis in zip(methods, basis_sets):
        for kw in kws:
            if kw == 'full' or kw == 'half' or kw == 'single':
                return _get_default_calcs(kw)
            elif kw == 'tsopt':
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

def _get_default_calcs(kw: str):
    """Resolves the default/convenience calc keywords"""

    mbs = [('mp2', 'cc-PVDZ'), ('b3lyp', 'cc-PVDZ'), ('b3lyp', 'aug-cc-PVDZ'),
           ('m06l', 'aug-cc-PVDZ'), ('m06l', 'aug-cc-PVTZ'), ('cbs-qb3', 'aug-cc-PVQZ')]

    calcs = [calculations.TsoptCalc(mbs[0][0], mbs[0][1], goal='ts'),
             calculations.IrcCalc(mbs[0][0], mbs[0][1], direction='reverse'),
             calculations.GoptCalc(mbs[0][0], mbs[0][1], direction='reverse'),
             calculations.IrcCalc(mbs[0][0], mbs[0][1], direction= 'forward'),
             calculations.GoptCalc(mbs[0][0], mbs[0][1], direction='forward')]

    if kw == 'single':
        return calcs

    for mb in mbs[1:]:

        calcs.append(calculations.TsoptCalc(mb[0], mb[1], goal='qst3'))
        calcs.append(calculations.GoptCalc(mb[0], mb[1], direction='reverse'))
        calcs.append(calculations.GoptCalc(mb[0], mb[1], direction='forward'))

        if kw == 'half':
            return calcs

    return calcs

def _get_in_out(calc, geom_dir, mol):
    """Determines where the in/output mol files live/should live based on calc"""

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
    """Calls GM factory method"""

    gm_dir = out + '{}/{}/{}/'.format(mol_name, calc.method, calc.name)
    gm = manager.GaussianManager.factory(gm_dir,
                                            mol_in,
                                            mol_out,
                                            multi,
                                            calc)

    return gm

def _get_mol_specs(mol, out):
    """Gives basis variable outputs based on provided mol filepath"""

    mol_name = utils.get_file_name(mol)
    mol_dir = out + '{}/'.format(mol_name)
    geom_dir = mol_dir + 'geometries/'
    mol_log = mol_dir + 'log.txt'

    return mol_name, geom_dir, mol_log

def _record_time(start, mol_name, log, calc=None):
    """Logs the time of a calc

        Args:
            start (float): Start time in seconds
            mol_name (str)
            log (str)
            calc (Bool)
    """

    timer_h = int(time.time() - start) / 3600
    hours = math.floor(timer_h)
    minutes = timer_h % 60
    seconds = (minutes / 60) % 60

    #Calc is None if we're logging how long a mol took
    if calc is None:
        msg = 'total calc time for {} is {} hr(s), {} min(s), and {} second(s)'.format(mol_name,
                                                                                         hours,
                                                                                         minutes,
                                                                                         seconds)
    else:
        msg = '{} {} on {} took {} hr(s), {} min(s), and {} second(s)'.format(calc.method,
                                                                              calc.name,
                                                                              mol_name,
                                                                              hours,
                                                                              minutes,
                                                                              seconds)

    utils.log_error(log, msg, verbose=True)

if __name__ == "__main__":

    args = _get_args()

    mols = _sanit_molpath(args.input_mol_path)
    out = args.output_root
    calcs = _resolve_calcs(args.calcs, args.methods, args.basis_sets)
    multi = args.multi

    run(mols, out, calcs, multi)
