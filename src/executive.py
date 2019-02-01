"""Class for supervising multiple GM instances to generate an entire dataset of TS molecules"""

from GaussianManager.src import manager, utils, exceptions
import os

class GaussianExecutive:

    def __init__(self,
                 molecule_list,
                 root_exp_directory,
                 calculation_list,
                 method,
                 basis_set,
                 multiplicity='-1 1',
                 log_errors=True,
                 resolve_attempts=8,
                 overwrite=False):

        self.molecule_list = [utils.sanitize_path(mol) for mol in molecule_list]
        self.root_exp_directory = utils.sanitize_path(root_exp_directory, add_slash=True)
        self.calculation_list = calculation_list
        self.method = method
        self.basis_set = basis_set
        self.multiplicity = multiplicity
        self.log_errors = log_errors
        self.resolve_attempts = resolve_attempts
        self.overwrite = overwrite

    def generate_dataset(self):

        for molecule in self.molecule_list:

            mol_name = os.path.basename(molecule)[:-4]
            mol_exp_dir = self.root_exp_directory + mol_name + '/'

            for calc in self.calculation_list:

                gm = manager.GaussianManager(molecule,
                                             mol_exp_dir,
                                             method=self.method,
                                             basis_set=self.basis_set,
                                             calculation=calc,
                                             multiplicity=self.multiplicity,
                                             resolve_attempts=self.resolve_attempts)
                if os.path.isfile(gm.output_filepath) and self.overwrite:
                    print('{0} output file for {1} already exists, skipping calculation.'.format(calc, mol_name))
                    continue

                try:
                    gm.run_gaussian_manager()
                except exceptions.GaussianManagerError as error:

                    log_file = mol_exp_dir + 'error_log.txt'
                    with open(log_file, 'a') as file:
                        file.write(str(error.args) + '\n\n -------------------------------------- \n\n')
                    continue
