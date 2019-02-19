"""Module of GaussianManager classes which manage the creation of a single guassian input/output.
     Capable of resolving common gaussian errors to ensure generated output is correct"""

import calculations
import exceptions
from gaussian_files import InputFile, OutputFile, FreqOutputFile
import os
import utils

class GaussianManager(object):

    def __init__(self,
                 experiment_directory,
                 molecule_filepath,
                 multiplicity,
                 calculation,
                 resolve_attempts=4):

        self.molecule_filepath = utils.sanitize_path(molecule_filepath)
        self.molecule_name = os.path.basename(self.molecule_filepath)[:-4]

        self.experiment_directory = utils.sanitize_path(experiment_directory, add_slash=True)
        utils.make_dir(self.experiment_directory)

        self.multiplicity = multiplicity
        self.calculation = calculation
        self.resolve_attempts = resolve_attempts

        self._create_base_input()
        self._create_base_output()

    @staticmethod
    def factory(experiment_directory,
                molecule_filepath,
                multiplicity,
                calculation,
                **kwargs):

        if calculation.name == calculations.TsoptCalc.__class__.__name__:

            gm = TsoptManager(experiment_directory,
                              molecule_filepath,
                              multiplicity,
                              calculation)

        elif calculation.name == calculations.IrcFwdCalc.__class__.__name__:

            gm = IrcFwdManager(experiment_directory,
                              molecule_filepath,
                              multiplicity,
                              calculation)

        elif calculation.name == calculations.IrcRevCalc.__class__.__name__:

            gm = IrcRevManager(experiment_directory,
                              molecule_filepath,
                              multiplicity,
                              calculation)

        return gm

    def _create_base_input(self):

        input_filepath = self.experiment_directory + '{}-input.com'.format(self.calculation.name)
        molecule_coords = utils.get_coords_from_obabel_xyz(self.molecule_filepath)
        self.input_file = InputFile(filepath=input_filepath,
                                       calculation=self.calculation,
                                       molecule_name=self.molecule_name,
                                       multiplicity=self.multiplicity,
                                       mol_coords=molecule_coords)

    def _create_base_output(self):

        output_filepath = self.experiment_directory + '{}-output.com'.format(self.calculation.name)
        self.output_file = OutputFile(filepath=output_filepath, input_file=self.input_file)

    def write_input(self):

        self.input_file.write()

    def write_output(self):

        for _ in range(self.resolve_attempts):

            try:
                self.output_file.write()
                break
            except exceptions.GaussianOutputError as error:
                self.resolve_convergence_error()
                continue

        else:
            self.raise_error(error.args[0])

    def resolve_convergence_error(self):

        output_coords = self.output_file.parse_xyz()
        self.input_file.mol_coords = output_coords
        self.input_file.write()

    def raise_error(self, error_code):

        raise exceptions.GaussianManagerError(error_code)

class TsoptManager(GaussianManager):

    def _create_base_output(self):

        output_filepath = self.experiment_directory + '{}-output.com'.format(self.calculation.name)
        self.output_file = FreqOutputFile(filepath=output_filepath, input_file=self.input_file)

    def write_output(self):

        super().write_output()
        if not utils.validate_single_imag_freq(self.output_file.parse_freq()):
            self.raise_error('freq_error')

class IrcFwdManager(GaussianManager):

    pass

class IrcRevManager(GaussianManager):

    pass
