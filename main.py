import gaussian_manager

def main():
    mol_path = '~/gaussian/raw_xyz_files/test/F-CH3-OH.xyz'
    exp_path = '~/gaussian/experiments/test/'
    basis_set = '6-31G'
    calculation = 'ts-opt'
    calculation_keywords = 'opt=(ts, calcfc, noeigen) sfc(maxcyc=256) freq'
    input_destination2 = exp_path + 'mp2' + '/' + basis_set + '/' + calculation + '/'
    input_destination3 = exp_path + 'b3lyp' + '/' + basis_set + '/' + calculation + '/'


    manager1 = gaussian_manager.GaussianManager(mol_path, exp_path)
    manager1.generate_gaussian_input()

    # manager2 = gaussian_manager.GaussianManager()
    # manager2.generate_gaussian_input(molecule_filepath=mol_path,
    #                                  input_destination_dir=input_destination2,
    #                                  method='mp2',
    #                                  basis_set=basis_set,
    #                                  calculation=calculation,
    #                                  multiplicity='-1 1')

    # manager3 = gaussian_manager.GaussianManager()
    # manager3.generate_gaussian_input(molecule_filepath=mol_path,
    #                                  input_destination_dir=input_destination3,
    #                                  method='b3lyp',
    #                                  basis_set=basis_set,
    #                                  calculation_keywords=calculation_keywords,
    #                                  calculation=calculation,
    #                                  multiplicity='-1 1')


if __name__ == "__main__":
    main()
