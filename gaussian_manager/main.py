"""Main CLI module for GM, parses args and submits them to gaussian_manager.run.run()"""

from . import calculations, utils, run

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

    parser = argparse.ArgumentParser(description=(
            'Main user interface for GM, used to submit a list of calcs to run on a list of mols'
    ))
    parser.add_argument('-i', '--input-mol-path', nargs='+', help=(
            'Directory containing all molecules to run calculation, or filepaths of individual molecule xyz files'
    ))
    parser.add_argument('--multi', default='-1 1', help=(
            'Multiplicity of mols. Currently, all submitted mols must have the same charge/multiplicity'
    ))
    parser.add_argument('-o', '--output-root', help=(
            'Root directory of the experiment where log files and mol directories are written to'
    ))
    parser.add_argument('-c', '--calcs', nargs='+', default=['mp2'], help=(
            'List of calc keywords in order of how they should be run. Default is [mp2] Datset specific keywords: '
            + '[mp2], [b3lyp], [m06l], or [cbs]. Possible calc specific keywords: [tsopt], [irc_rev], [irc_fwd], '
            + '[qst3], [gopt_rev], and [gopt_fwd]'
    ))
    parser.add_argument('-m', '--methods', nargs='+', default=['mp2'], help=(
            'Used when specifying calc specific keywords. List of theory levels to run the calc list at for each mol, '
            + 'typically only a single item in this list, as the entire calc list is run for each level of theory '
            + 'specified'
    ))
    parser.add_argument('-b', '--basis-sets', nargs='+', default=['cc-PVDZ'], help=(
        'Used when specifying calc specific keywords. Basis set for calcs. len(methods) == len(basis_sets) must be True'
    ))

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


def _resolve_calcs(kws: str, methods: List, basis_sets: List) -> List[Union[
    calculations.TsoptCalc,
    calculations.IrcCalc,
    calculations.GoptCalc
]]:
    """Checks provided calcs args to create list of calculation objects"""

    calcs = []
    for method, basis in zip(methods, basis_sets):
        for kw in kws:
            if kw == 'mp2' or kw == 'b3lyp' or kw == 'm06l'or kw == 'cbs':
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

    if kw == 'b3lyp':

        calcs = [
            calculations.TsoptCalc('b3lyp', 'cc-PVDZ', goal='qst3'),
            calculations.GoptCalc('b3lyp', 'cc-PVDZ', direction='reverse'),
            calculations.GoptCalc('b3lyp', 'cc-PVDZ', direction='forward'),
            calculations.TsoptCalc('b3lyp', 'aug-cc-PVDZ', goal='qst3'),
            calculations.GoptCalc('b3lyp', 'aug-cc-PVDZ', direction='reverse'),
            calculations.GoptCalc('b3lyp', 'aug-cc-PVDZ', direction='forward')
        ]

    elif kw == 'm06l':

        calcs = [
            calculations.TsoptCalc('m06l', 'aug-cc-PVDZ', goal='qst3'),
            calculations.GoptCalc('m06l', 'aug-cc-PVDZ', direction='reverse'),
            calculations.GoptCalc('m06l', 'aug-cc-PVDZ', direction='forward'),
            calculations.TsoptCalc('m06l', 'aug-cc-PVTZ', goal='qst3'),
            calculations.GoptCalc('m06l', 'aug-cc-PVTZ', direction='reverse'),
            calculations.GoptCalc('m06l', 'aug-cc-PVTZ', direction='forward')
        ]

    elif kw == 'cbs':

        calcs = [
            calculations.TsoptCalc('cbs-qb3', 'aug-cc-PVTZ', goal='qst3'),
            calculations.GoptCalc('cbs-qb3', 'aug-cc-PVTZ', direction='reverse'),
            calculations.GoptCalc('cbs-qb3', 'aug-cc-PVTZ', direction='forward'),
            calculations.TsoptCalc('cbs-qb3', 'aug-cc-PVQZ', goal='qst3'),
            calculations.GoptCalc('cbs-qb3', 'aug-cc-PVQZ', direction='reverse'),
            calculations.GoptCalc('cbs-qb3', 'aug-cc-PVQZ', direction='forward')
        ]

    else:

        calcs = [
            calculations.TsoptCalc('mp2', 'cc-PVDZ', goal='ts', convergence='loose', grid='ultrafine'),
            calculations.IrcCalc('mp2', 'cc-PVDZ', direction='reverse'),
            calculations.GoptCalc('mp2', 'cc-PVDZ', direction='reverse', convergence='loose', grid='ultrafine'),
            calculations.IrcCalc('mp2', 'cc-PVDZ', direction='forward'),
            calculations.GoptCalc('mp2', 'cc-PVDZ', direction='forward', convergence='loose', grid='ultrafine')
        ]

    return calcs


if __name__ == "__main__":

    main()
