from .gaussian_manager import calculations, utils, run

import argparse
import os

from typing import Union, List


def main():

    args = _get_args()

    m = _sanit_molpath(args.input_mol_path)
    o = args.output_root
    cs = _resolve_calcs(args.calcs, args.methods, args.basis_sets)
    mm = args.multi

    run.run(m, o, cs, mm)


def _get_args():
    """Get args from command line"""

    parser = argparse.ArgumentParser(description=('Main user interface for GM, used to submit a list of calcs to '
                                                  + 'run on a list of mols'))
    parser.add_argument('-i', '--input-mol-path', nargs='+',
                        help=('Directory containing all molecules to run calculation, or filepaths of individual '
                              + 'molecule xyz files'))
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
                        help='Basis set for calcs. len(methods) == len(basis_sets) must be True')

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


def _resolve_calcs(kws, methods, basis_sets) -> List[Union[calculations.TsoptCalc,
                                                           calculations.IrcCalc,
                                                           calculations.GoptCalc]]:
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


def _get_default_calcs(kw: str) -> List[Union[calculations.TsoptCalc, calculations.IrcCalc, calculations.GoptCalc]]:
    """Resolves the default/convenience calc keywords"""

    mbs = [('mp2', 'cc-PVDZ'), ('b3lyp', 'cc-PVDZ'), ('b3lyp', 'aug-cc-PVDZ'),
           ('m06l', 'aug-cc-PVDZ'), ('m06l', 'aug-cc-PVTZ'), ('cbs-qb3', 'aug-cc-PVQZ')]

    calcs = [calculations.TsoptCalc(mbs[0][0], mbs[0][1], goal='ts', convergence='loose', grid='fine'),
             calculations.IrcCalc(mbs[0][0], mbs[0][1], direction='reverse'),
             calculations.GoptCalc(mbs[0][0], mbs[0][1], direction='reverse', convergence='loose', grid='fine'),
             calculations.IrcCalc(mbs[0][0], mbs[0][1], direction='forward'),
             calculations.GoptCalc(mbs[0][0], mbs[0][1], direction='forward', convergence='loose', grid='fine')]

    if kw == 'single':
        return calcs

    for mb in mbs[1:]:

        calcs.append(calculations.TsoptCalc(mb[0], mb[1], goal='qst3'))
        calcs.append(calculations.GoptCalc(mb[0], mb[1], direction='reverse'))
        calcs.append(calculations.GoptCalc(mb[0], mb[1], direction='forward'))

        if kw == 'half':
            return calcs

    return calcs


if __name__ == "__main__":

    main()
