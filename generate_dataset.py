import argparse
from GaussianManager.src import calculations, executive, exceptions, utils
import os

def get_args():

    parser = argparse.ArgumentParser(description='Run standard calculation suite on provided directory of molecules')
    parser.add_argument('-i', '--input', help='The input directory containing xyz files to run gaus calcs on')
    parser.add_argument('-o', '--output', help='the experimental root dir where data is written to')
    parser.add_argument('-m', '--method', default='mp2', nargs='+', help='The level of theory to run calcs at')
    parser.add_argument('-b', '--basis_set', default='6-31G', nargs='+', help='The basis set calcs are run using')
    args = parser.parse_args()

    return args

def main():

    args = get_args()

    xyz_path = utils.sanitize_path(args.input, add_slash=True)
    mol_list = [xyz_path + mol for mol in os.listdir(xyz_path)]

    root_dir = utils.sanitize_path(args.output, add_slash=True)
    error_log_path = root_dir + 'error_log.txt'
    geom_dir = root_dir + 'geometries/'

    method = args.method
    basis_set = args.basis_set

    calc_list = [calculations.TsoptCalc(method, basis_set),
                 calculations.IrcRevCalc(method, basis_set),
                 calculations.IrcFwdCalc(method, basis_set)]

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
