"""Script for running a set of xyz files through a standard calculation suite"""

import argparse
from GaussianManager.src import calculations, executive, exceptions, utils
import os

def get_args():

    parser = argparse.ArgumentParser(description='Run standard calculation suite on provided directory of molecules')
    parser.add_argument('-i', '--input', help='The input directory containing xyz files to run gaus calcs on')
    parser.add_argument('-o', '--output', help='the experimental root dir where data is written to')
    args = parser.parse_args()

    return args

def main():

    args = get_args()

    xyz_path = utils.sanitize_path(args.input, add_slash=True)
    mol_list = [xyz_path + mol for mol in os.listdir(xyz_path)]

    root_dir = utils.sanitize_path(args.output, add_slash=True)
    error_log_path = root_dir + 'error_log.txt'
    geom_dir = root_dir + 'geometries/'

    method_0, method_1, method_2, method_3 = 'MP2', 'B3LYP', 'M06', 'G4'
    basis_0, basis_1, basis_2, basis_3 = 'cc-pVDZ', 'aug-cc-pVDZ', 'aug-cc-pVTZ', 'aug-cc-pVQZ'

    calc_list = [calculations.TsoptCalc(method_0, basis_0),
                 calculations.IrcCalc(method_0, basis_0, direction='reverse'),
                 calculations.IrcCalc(method_0, basis_0, direction='forward')]

    for mol in mol_list:

        exp_dir = root_dir + os.path.basename(mol)[:-4]
        ex = executive.GaussianExecutive(exp_dir, mol, '-1 1', calc_list)
        try:
            ex.run_calculation_suite()
        except exceptions.GaussianExecutiveError as e:
            utils.log_error(error_log_path, mol, e)
            continue
        else:
            for m_path in ex.output_mol_filepaths:
                utils.compile_geom(geom_dir, m_path)

if __name__ == "__main__":

    main()
