"""TO BE IMPLEMENTED"""

from GaussianManager.src import exceptions, toolbox, utils
import os
import subprocess

class GaussianManager(object):

    def __init__(self,
                 molecule_filepath,
                 experiment_directory,
                 method='mp2',
                 basis_set='6-31G',
                 calculation='tsopt',
                 multiplicity='--1 1',
                 resolve_attempts=8):

        self.molecule_filepath = utils.sanitize_path(molecule_filepath)
        self.experiment_directory = utils.sanitize_path(experiment_directory, add_slash=True)
        utils.make_dir(self.experiment_directory)

        self.method = method
        self.basis_set = basis_set
        self.calculation = calculation
        self.multiplicity = multiplicity
        self.resolve_attempts = resolve_attempts

        self.input_filepath = self.experiment_directory + '{0}-input.com'.format(self.calculation)
        self.output_filepath = self.experiment_directory + '{0}-output.log'.format(self.calculation)
        self.output_molecule_name = self.experiment_directory + os.path.basename(self.molecule_filepath)[:-4]

    def run_gaussian_manager(self):

        self._write_gm_input_file()
        self._run_gm_calculation()
        self._write_gm_output_geometries()

    def _write_gm_input_file(self):

        toolbox.generate_gaussian_input_file(molecule_filepath=self.molecule_filepath,
                                             input_filepath=self.input_filepath,
                                             method=self.method,
                                             basis_set=self.basis_set,
                                             calculation=self.calculation,
                                             multiplicity=self.multiplicity)

    def _run_gm_calculation(self):

        if self.resolve_attempts == 0:
            toolbox.start_gaussian_calculation(self.input_filepath, self.output_filepath)
        else:
            new_input_filepath = self.input_filepath
            for counter in range(self.resolve_attempts):
                try:
                    toolbox.start_gaussian_calculation(new_input_filepath, self.output_filepath)
                    break
                except exceptions.GaussianToolboxError as error:
                    code = error.args
                    if code == 'l101':
                        new_input_filepath = toolbox.resolve_input_error(self.input_filepath)
                        continue
                    elif code == 'l123' or code == 'l103' or code == 'l502' or code == 'l9999':
                        maxcyc = min(256 * counter, 2048)
                        new_input_filepath = toolbox.resolve_convergence_error(self.input_filepath, maxcyc=maxcyc)
                        continue
                    else:
                        error_message = ('Unable to resolve error code {0} for input file {1}, '
                                         + 'please look up appropriate code at '
                                         + '(https://docs.computecanada.ca/wiki/Gaussian_error_messages) '
                                         + 'and update molecule or GM signature as required').format(code, self.input_filepath)
                        raise exceptions.GaussianManagerError(error_message)

    def _write_gm_output_geometries(self):

        if self.calculation == 'tsopt':
            self.ts_xyz_filepath = self.output_molecule_name + '_ts.xyz'
            toolbox.write_tsopt_geometry_from_output(self.output_filepath, self.ts_xyz_filepath)
        elif self.calculation == 'irc':
            self.reactant_xyz_filepath = self.output_molecule_name + '_reactant.xyz'
            self.product_xyz_filepath = self.output_molecule_name + '_product.xyz'
            toolbox.write_irc_geometries_from_output(self.output_filepath,
                                                     self.reactant_xyz_filepath,
                                                     self.product_xyz_filepath)
