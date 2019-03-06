"""Script for running a set of xyz files through a standard calculation suite"""

import argparse
from GaussianManager.src import calculations, executive, exceptions, utils
import os
import time
from typing import List

def get_args() -> argparse.Namespace:

    parser = argparse.ArgumentParser(description='Run standard calculation suite on provided directory of molecules')
    parser.add_argument('-i', '--input', help=('The input directory containing xyz files to run '
                                               + 'gaus calcs on, should be terminal to avoid '
                                               + 'unwanted structures being pulled in'))
    parser.add_argument('-o', '--output', help='the experimental root dir where data is written to')
    parser.add_argument('-m', '--multiplicity', default='-1 1')
    parser.add_argument('-c', '--calc-suite', default='full', help='Options include "full", "single", and "half" ')
    args = parser.parse_args()

    return args

def main(inp: str, out: str, multiplicity: str, scope='full'):
    """Run script"""

    start = time.time()

    #get directory name and list of files from input directory
    for d, _, f  in os.walk(utils.sanitize_path(inp)):

        #Grab all files which are .xyz files
        mol_list = [utils.sanitize_path(d, add_slash=True) + file for
                    file in f if os.path.splitext(file)[-1] == '.xyz']

    #set paths
    root_dir = utils.sanitize_path(out, add_slash=True)
    log_path = root_dir + 'log.txt'

    #Define calc parameters
    methods = ['mp2', 'b3lyp', 'm06-l', 'cbs-qb3']
    basis_sets = ['cc-pVDZ', 'aug-cc-pVDZ', 'aug-cc-pVTZ', 'aug-cc-pVQZ']
    calc_list = get_calc_list(methods, basis_sets, scope)

    #Create executive object for each mol to run each calc on mol
    for mol in mol_list:

        mol_name = utils.get_file_name(mol)
        exp_dir = root_dir + mol_name
        ex = executive.GaussianExecutive(mol, exp_dir, multiplicity, calc_list)
        try:
            ex.run_calculation_suite()

        #Raised if GE cannot resolve an error thrown by gaussian typically an l101 or l301
        except exceptions.GaussianExecutiveError as e:
            msg = e.args[0] + ' on mol {}'.format(mol_name)
            utils.log_error(log_path, msg, verbose=True)
            continue

    #Log how long the run took
    end = time.time()
    t_msg = 'time of run: ' + str(end - start) + ' s'
    utils.log_error(log_path, t_msg, verbose=True)

def get_calc_list(methods: List, basis_sets: List, scope: str):
    """12 calcs in total, in sets of 3. First set is (ts, irc_r, irc_f) the next three are
        (qst3, irc_r, irc_f)"""

    #Append the first set of calcs
    calc_list = [calculations.TsoptCalc(methods[0], basis_sets[0], goal='ts'),
                 calculations.IrcCalc(methods[0], basis_sets[0], direction='reverse'),
                 calculations.IrcCalc(methods[0], basis_sets[0], direction='forward')]
    if scope == 'single':
        return calc_list

    #Loop through method/basis pairs to create appropriate calculation objects
    for method, basis in zip(methods[1:], basis_sets[1:]):
        calc_list.append(calculations.TsoptCalc(method, basis, goal='qst3'))
        calc_list.append(calculations.IrcCalc(method, basis, direction='reverse'))
        calc_list.append(calculations.IrcCalc(method, basis, direction='forward'))
        if scope == 'half':
            return calc_list

    return calc_list

if __name__ == "__main__":

    args = get_args()
    main(args.input, args.output, args.multiplicity, args.scope)
