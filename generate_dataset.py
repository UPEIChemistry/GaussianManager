"""Script for running a set of xyz files through a standard calculation suite"""

import argparse
from GaussianManager.src import calculations, executive, exceptions, utils
import os
from typing import List

def get_args() -> argparse.Namespace:

    parser = argparse.ArgumentParser(description='Run standard calculation suite on provided directory of molecules')
    parser.add_argument('-i', '--input', help=('The input directory containing xyz files to run '
                                               + 'gaus calcs on, should be terminal to avoid '
                                               + 'unwanted structures being pulled in'))
    parser.add_argument('-o', '--output', help='the experimental root dir where data is written to')
    parser.add_argument('-m', '--multiplicity', default='-1 1')
    args = parser.parse_args()

    return args

def main(inp: str, out: str, multiplicity: str):
    """Run script"""

    for d, _, f  in os.walk(utils.sanitize_path(inp)):
        mol_list = [utils.sanitize_path(d, add_slash=True) + file for
                    file in f if os.path.splitext(file)[-1] == '.xyz']

    root_dir = utils.sanitize_path(out, add_slash=True)
    error_log_path = root_dir + 'error_log.txt'

    methods = ['mp2', 'b3lyp', 'm06', 'g4']
    basis_sets = ['cc-pVDZ', 'aug-cc-pVDZ', 'aug-cc-pVTZ', 'aug-cc-pVQZ']

    calc_list = get_calc_list(methods, basis_sets)

    for mol in mol_list:

        mol_name = utils.get_file_name(mol)
        exp_dir = root_dir + mol_name
        ex = executive.GaussianExecutive(mol, exp_dir, multiplicity, calc_list)
        try:
            ex.run_calculation_suite()
        except exceptions.GaussianExecutiveError as e:
            msg = e.args[0] + ' on mol {}'.format(mol_name)
            utils.log_error(error_log_path, msg, verbose=True)
            continue

def get_calc_list(methods: List, basis_sets: List):
    """12 calcs in total, in sets of 3. First set is (ts, irc_r, irc_f) the next three are
        (qst3, irc_r, irc_f)"""

    calc_list = [calculations.TsoptCalc(methods[0], basis_sets[0], goal='ts'),
                 calculations.IrcCalc(methods[0], basis_sets[0], direction='reverse'),
                 calculations.IrcCalc(methods[0], basis_sets[0], direction='forward')]

    for method, basis in zip(methods[1:], basis_sets[1:]):
        calc_list.append(calculations.TsoptCalc(method, basis, goal='qst3'))
        calc_list.append(calculations.IrcCalc(method, basis, direction='reverse'))
        calc_list.append(calculations.IrcCalc(method, basis, direction='forward'))

    return calc_list

if __name__ == "__main__":

    args = get_args()
    main(args.input, args.output, args.multiplicity)
