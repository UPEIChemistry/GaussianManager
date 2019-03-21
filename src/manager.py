"""
Module of GaussianManager classes which manage the creation of a single guassian input/output. Capable of resolving
common gaussian errors to ensure generated output is correct
"""

import calculations
import src.exceptions as exceptions
import utils
from inputs import InputFile
from outputs import OutputFile

from typing import List, Union, Type, TypeVar

T = TypeVar('T', bound='GaussianManager')


class GaussianManager(object):

    def __init__(self,
                 experiment_directory: str,
                 input_mol_filepath: str,
                 output_mol_filepath: str,
                 multiplicity: str,
                 calculation: calculations.Calculation,
                 resolve_attempts: int = 4):

        self.experiment_directory = utils.sanitize_path(experiment_directory, add_slash=True)
        utils.make_dir(self.experiment_directory)
        self.log = self.experiment_directory + 'log.txt'

        self.input_mol_filepath = utils.sanitize_path(input_mol_filepath)
        self.output_mol_filepath = utils.sanitize_path(output_mol_filepath)
        self.mol_name = self._get_mol_name()

        self.multiplicity = multiplicity
        self.calculation = calculation
        self.calculation_name = self.calculation.name
        self.resolve_attempts = resolve_attempts

        self.input_file = self._create_base_input()
        self.output_file = self._create_base_output()

    @staticmethod
    def factory(experiment_directory: str,
                input_mol_filepath: Union[str, List],
                output_mol_filepath: str,
                multiplicity: str,
                calculation: calculations.Calculation,
                resolve_attempts: int = 6) -> Type[T]:
        """
        Static factory method for GM which returns corresponding GM object based on calc provided

        :param experiment_directory: directory to write GM input/outputs
        :param input_mol_filepath:  path to the xyz file containing input mol coords
        :param output_mol_filepath: path to where the output mol is written
        :param multiplicity: multiplicity of input mol
        :param calculation: Calc object for a specific gaussian calculation
        :param resolve_attempts: Defaults to 4. The number of times GM will attempt to resolve simple gaussian errors

        :return: GaussianManager instance
        """

        if calculation.name == 'ts':

            gm = TSManager(experiment_directory, input_mol_filepath, output_mol_filepath,
                           multiplicity, calculation, resolve_attempts + 2)

        elif calculation.name == 'qst3':

            gm = QST3Manager(experiment_directory, input_mol_filepath, output_mol_filepath,
                             multiplicity, calculation, resolve_attempts + 2)

        elif calculation.name == 'qst2':

            gm = QST2Manager(experiment_directory, input_mol_filepath, output_mol_filepath,
                             multiplicity, calculation, resolve_attempts + 2)

        elif 'irc' in calculation.name:

            gm = IrcManager(experiment_directory, input_mol_filepath, output_mol_filepath,
                            multiplicity, calculation, resolve_attempts)

        elif 'gopt' in calculation.name:

            gm = OPTManager(experiment_directory, input_mol_filepath, output_mol_filepath,
                            multiplicity, calculation, resolve_attempts)

        return gm

    def run_manager(self):
        """Convenience function which calls all GM fxns required for running calc on mol"""

        self.write_input()
        self.write_output()
        self.write_obabel_output()

    def write_input(self):
        """Writes gaussian input file for provided GM args"""

        self.input_file.write()

    def write_output(self):
        """Runs gaussian to generate the output file for provided InputFile object. Attempts to
            do rudimentary error resolution when gaussian throws an exception"""

        for counter in range(self.resolve_attempts):

            try:
                self.output_file.write()
                break

            except exceptions.GaussianOutputError as e:

                utils.log_error(self.log, 'encountered {} with {}'.format(e.args[0], self.mol_name))

                # l123 is typically thrown by irc non-convergence, but we've nerfed ircs so they don't converge
                if 'l123' in e.args[0]:
                    break

                # l301 is a mismatching of electrons & multiplicity usually
                elif 'l301' in e.args[0] or 'l101' in e.args[0] or 'l202' in e.args[0] or 'l1' == e.args[0]:
                    self.raise_error(e.args[0] + ' unresolvable error')

                else:
                    self.resolve_convergence_error()
                    continue

        # Raised if gm cannot resolve the error in time
        else:
            self.raise_error('counter ran out')

    def write_obabel_output(self):
        """Parses output file to write output mol in obabel format"""

        self.output_file.write_obabel_xyz()
        utils.copy_file(self.output_file.output_mol_path, self.experiment_directory)

    def write_convergence_metrics(self):
        """Calls into OutputFile object to parse convergence metrics from gaussian output"""

        self.output_file.display_covergence()

    def resolve_convergence_error(self):
        """Solves rudimentary convergence errors thrown by gaussian"""

        # Restart the calc from the checkpoint file, re-write inp/out objects
        try:
            self._remake_calc()
            self.input_file = self._create_base_input()
            self.output_file = self._create_base_output()
            self.write_input()

        except exceptions.GaussianOutputError as e:
            raise exceptions.GaussianManagerError(e.args[0])

    def raise_error(self, error_code: str) -> None:
        """raises a GaussianManagerError with a provided error_code"""

        raise exceptions.GaussianManagerError(error_code)

    def _create_base_input(self) -> Type[InputFile]:
        """Creates InputFile objects based on args provided to GM

            Returns:
                InputFile object
        """

        input_filepath = self.experiment_directory + 'input.com'
        molecule_coords = utils.get_coords_from_obabel_xyz(self.input_mol_filepath)
        input_file = InputFile.factory(filepath=input_filepath,
                                       calculation=self.calculation,
                                       molecule_name=self.mol_name,
                                       multiplicity=self.multiplicity,
                                       mol_coords=molecule_coords)

        return input_file

    def _create_base_output(self) -> Type[OutputFile]:
        """Creates OutputFile objects based on args provided to GM

            Returns:
                OutputFile object
        """

        output_filepath = self.experiment_directory + 'output.log'
        output_file = OutputFile.factory(filepath=output_filepath,
                                         input_file=self.input_file,
                                         output_mol_path=self.output_mol_filepath)

        return output_file

    def _get_mol_name(self) -> str:
        """Gets the output mol name based on provided suffix"""

        return utils.get_file_name(self.output_mol_filepath)

    def _remake_calc(self):

        raise NotImplementedError


class IrcManager(GaussianManager):
    """
    GM sub-class which manages single irc calculations for single molecules. Capable of
    generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors
    """

    def _remake_calc(self):

        pass
        # self.calculation = calculations.IrcCalc(self.calculation.method,
        #                                         self.calculation.basis_set,
        #                                         self.calculation.direction,
        #                                         self.calculation.convergence,
        #                                         self.calculation.grid,
        #                                         self.calculation.maxcyc,
        #                                         self.calculation.max_points,
        #                                         self.calculation.step_size,
        #                                         restart=True)


class OPTManager(GaussianManager):
    """
    GM sub-class which manages single tsopt calculations for single molecules. Capable of
    generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors
    """

    def _remake_calc(self):

        pass
        # self.calculation = calculations.GoptCalc(self.calculation.method,
        #                                          self.calculation.basis_set,
        #                                          self.calculation.direction,
        #                                          self.calculation.convergence,
        #                                          self.calculation.grid,
        #                                          self.calculation.max_step_size,
        #                                          self.calculation.num_steps + self.calculation.num_steps,
        #                                          self.calculation.maxcyc,
        #                                          restart=True)


class TSManager(GaussianManager):
    """
    GM sub-class which manages single tsopt calculations for single molecules. Capable of
    generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors
    """

    def run_manager(self):
        """Convenience function which calls all GM fxns required for running calc on mol"""

        self.write_input()
        self.write_output()
        self.write_obabel_output()
        self.write_convergence_metrics()

    def write_output(self):
        """
        Runs gaussian to generate the output file for provided InputFile object. Attempts to
        do rudimentary error resolution when gaussian throws an exception. Also, will throw
        an error if gaussian creates a ts which doesn't have a single imag freq
        """

        for _ in range(self.resolve_attempts):

            super().write_output()
            self.output_file.write_freq()

            # Check for freqs, restart if NOT single negative freq
            if not utils.validate_single_imag_freq(self.output_file.freqs):
                continue
            else:
                break
        else:
            self.raise_error('freq_error')

    def _remake_calc(self):

        pass
        # self.calculation = calculations.TsoptCalc(self.calculation.method,
        #                                           self.calculation.basis_set,
        #                                           self.calculation.goal,
        #                                           self.calculation.convergence,
        #                                           self.calculation.grid,
        #                                           self.calculation.max_step_size,
        #                                           self.calculation.num_steps + self.calculation.num_steps,
        #                                           self.calculation.maxcyc,
        #                                           restart=True)


class QST3Manager(TSManager):
    """
    GM sub-class which manages single tsopt calculations for single molecules. Capable of
    generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors
    """

    def _create_base_input(self, ts: bool = True) -> InputFile:
        """
        Creates InputFile objects based on args provided to GM

        Returns:
            InputFile object
        """

        # Get coords
        input_filepath = self.experiment_directory + 'input.com'
        ts_coords, reactant_coords, product_coords = utils.find_rpt_coords(self.input_mol_filepath, ts)

        # Make sure files exist
        if ts_coords is None or reactant_coords is None or product_coords is None:
            self.raise_error('unable to find proper mol files for parsing coords')

        # Create input file
        molecule_coords = [reactant_coords, product_coords, ts_coords]
        input_file = InputFile.factory(filepath=input_filepath,
                                       calculation=self.calculation,
                                       molecule_name=self.mol_name,
                                       multiplicity=self.multiplicity,
                                       mol_coords=molecule_coords)

        return input_file


class QST2Manager(QST3Manager):
    """
    GM sub-class which manages single tsopt calculations for single molecules. Capable of
    generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors
    """

    def _create_base_input(self, ts: bool = False):

        super()._create_base_input(ts=False)
