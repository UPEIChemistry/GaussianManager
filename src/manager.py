"""Module of GaussianManager classes which manage the creation of a single guassian input/output.
     Capable of resolving common gaussian errors to ensure generated output is correct"""

from GaussianManager.src import calculations, exceptions, utils
from GaussianManager.src.files import InputFile, OutputFile
import os
from typing import List, Type, Union

class GaussianManager(object):
    """Super-class for managing single calculations for single molecules. Capable of generating
            gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors

        Args:
            experiment_directory (str): directory to write GM input/outputs
            input_mol_filepath (str): path to the xyz file containing input mol coords
            multiplicity (str): multiplicity of input mol
            calculation (Calculation object): Calc object for a specific gaussian calculation
            resolve_attempts (int, optional): Defaults to 4. Num of times GM attempts to fix
                gaussian errors
    """

    def __init__(self,
                 experiment_directory: str,
                 input_mol_filepath: str,
                 output_mol_filepath: str,
                 multiplicity: str,
                 calculation: calculations.Calculation,
                 resolve_attempts: int=4):

        self.experiment_directory = utils.sanitize_path(experiment_directory, add_slash=True)
        utils.make_dir(self.experiment_directory)

        self.input_mol_filepath = utils.sanitize_path(input_mol_filepath)
        self.output_mol_filepath = utils.sanitize_path(output_mol_filepath)
        self.mol_name = self._get_mol_name()

        self.multiplicity = multiplicity
        self.calculation = calculation
        self.resolve_attempts = resolve_attempts

        self.input_file = self._create_base_input()
        self.output_file = self._create_base_output()

    @staticmethod
    def factory(experiment_directory: str,
                input_mol_filepath: Union[str, List],
                output_mol_filepath: str,
                multiplicity: str,
                calculation: calculations.Calculation,
                resolve_attempts: int=4,
                **kwargs):
        """Static factory method for GM which returns corresponding GM object based on calc provided

            Args:
                experiment_directory (str): directory to write GM input/outputs
                input_mol_filepath (str): path to the xyz file containing input mol coords
                multiplicity (str): multiplicity of input mol
                calculation (Calculation object): Calc object for a specific gaussian calculation

            Returns:
                GaussianManager object: The corresponding GM object
        """

        if calculation.name == 'ts':

            out = utils.insert_suffix(output_mol_filepath, '_ts')
            gm = TsoptManager(experiment_directory,
                              input_mol_filepath,
                              out,
                              multiplicity,
                              calculation,
                              resolve_attempts)

        elif calculation.name == 'qst3':

            out = utils.insert_suffix(output_mol_filepath, '_ts')
            gm = QST3Manager(experiment_directory,
                              input_mol_filepath,
                              out,
                              multiplicity,
                              calculation,
                              resolve_attempts)

        elif calculation.name == 'irc_reverse':

            out = utils.insert_suffix(output_mol_filepath, '_reactant')
            gm = IrcRevManager(experiment_directory,
                               input_mol_filepath,
                               out,
                               multiplicity,
                               calculation,
                               resolve_attempts)

        elif calculation.name == 'irc_forward':

            out = utils.insert_suffix(output_mol_filepath, '_product')
            gm = IrcFwdManager(experiment_directory,
                               input_mol_filepath,
                               out,
                               multiplicity,
                               calculation,
                               resolve_attempts)

        return gm

    def _create_base_input(self) -> InputFile:
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

    def _create_base_output(self) -> OutputFile:
        """Creates OutputFile objects based on args provided to GM

            Returns:
                OutputFile object
        """

        output_filepath = self.experiment_directory + 'output.log'
        output_file = OutputFile.factory(filepath=output_filepath,
                                         input_file=self.input_file,
                                         output_mol_path=self.output_mol_filepath)

        return output_file

    def _get_mol_name(self) -> str :
        """Gets the output mol name based on provided suffix"""

        return utils.get_file_name(self.output_mol_filepath)

    def run_manager(self):
        """Convenience function which calls all GM fxns required for running calc on mol"""

        self.write_input()
        self.write_output()
        self.write_obabel_output()
        self.write_convergence_metrics()


    def write_input(self):
        """Writes gaussian input file for provided GM args"""

        self.input_file.write()

    def write_output(self):
        """Runs gaussian to generate the output file for provided InputFile object. Attempts to
            do rudimentary error resolution when gaussian throws an exception"""

        for _ in range(self.resolve_attempts):

            try:
                self.output_file.write()
                break
            except exceptions.GaussianOutputError as e:

                #l301 is a mismatching of electrons & multiplicity usually
                if 'l301' in e.args[0]:
                    self.raise_error(e.args[0] + ' error with multiplicity')

                #l101 is some sort of input error, usually spacing is off
                elif 'l101' in e.args[0]:
                    self.raise_error(e.args[0] + ' error with input file')
                else:
                    self.resolve_convergence_error()
                    continue

        #Raised if gm cannot resolve the error in time
        else:
            self.raise_error('counter ran out')

    def write_obabel_output(self):
        """Parses output file to write output mol in obabel format"""

        self.output_file.write_obabel_xyz()

    def write_convergence_metrics(self):
        """Calls into OutputFile object to parse convergence metrics from gaussian output"""

        self.output_file.display_covergence()

    def resolve_convergence_error(self):
        """Solves rudimentary convergence errors thrown by gaussian"""

        #Simply pull the farthest geometry from the output file before it errored out and resubmit
        try:
            output_coords = self.output_file.parse_xyz()
        except exceptions.GaussianOutputError as e:
            raise exceptions.GaussianManagerError(e.args[0])
        else:
            self.input_file.mol_coords = output_coords
            self.input_file.write()

    def raise_error(self, error_code):
        """raises a GaussianManagerError with a provided error_code"""

        raise exceptions.GaussianManagerError(error_code)

class TsoptManager(GaussianManager):
    """GM sub-class which manages single tsopt calculations for single molecules. Capable of
        generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors

        Args:
            experiment_directory (str): directory to write GM input/outputs
            input_mol_filepath (str): path to the xyz file containing input mol coords
            multiplicity (str): multiplicity of input mol
            calculation (Calculation object): Calc object for a specific gaussian calculation
            resolve_attempts (int, optional): Defaults to 4. Num of times GM attempts to fix
                gaussian errors
    """

    def write_output(self):
        """Runs gaussian to generate the output file for provided InputFile object. Attempts to
            do rudimentary error resolution when gaussian throws an exception. Also, will throw
            an error if gaussian creates a ts which doesn't have a single imag freq"""

        #Same as parent method, but adds freq parsing/checking
        super().write_output()
        self.output_file.write_freq()
        if not utils.validate_single_imag_freq(self.output_file.freqs):
            self.raise_error('freq_error')

class QST3Manager(TsoptManager):
    """GM sub-class which manages single tsopt calculations for single molecules. Capable of
        generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors

        Args:
            experiment_directory (str): directory to write GM input/outputs
            input_mol_filepath (str): path to the dir containing xyz files endings with '_ts.xyz',
                '_reactant.xyz' and '_product.xyz'. Dirname should be the name of the reaction, as
                this is what is used to name output xyz files
            multiplicity (str): multiplicity of input mol
            calculation (Calculation object): Calc object for a specific gaussian calculation
            resolve_attempts (int, optional): Defaults to 4. Num of times GM attempts to fix
                gaussian errors
    """

    def _create_base_input(self) -> InputFile:
        """Creates InputFile objects based on args provided to GM

            Returns:
                InputFile object
        """

        input_filepath = self.experiment_directory + 'input.com'

        #input_mol_filepath is a directory for QST3Managers, so gather all files in that dir
        for d, _, files in os.walk(os.path.dirname(self.input_mol_filepath)):

            #Loop through files and pull out ts, reactant & product coords
            for f in files:
                filepath = utils.sanitize_path(d, add_slash=True) + f
                if '_ts.xyz' in filepath:
                    ts_coords = utils.get_coords_from_obabel_xyz(filepath)
                elif '_reactant.xyz' in filepath:
                    reactant_coords = utils.get_coords_from_obabel_xyz(filepath)
                elif '_product.xyz' in filepath:
                    product_coords = utils.get_coords_from_obabel_xyz(filepath)

        #Make sure enough coords have been parsed
        if ts_coords is None or reactant_coords is None or product_coords is None:
            raise exceptions.GaussianManagerError('Unable to find proper mol files for coord parsing')

        molecule_coords = [reactant_coords, product_coords, ts_coords]
        input_file = InputFile.factory(filepath=input_filepath,
                                       calculation=self.calculation,
                                       molecule_name=self.mol_name,
                                       multiplicity=self.multiplicity,
                                       mol_coords=molecule_coords)

        return input_file

    def _get_mol_name(self) -> str:
        """Gets the output mol name based on provided suffix"""

        return os.path.basename(self.input_mol_filepath)

class IrcRevManager(GaussianManager):
    """GM sub-class which manages single irc-rev calculations for single molecules. Capable of
        generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors

        Args:
            experiment_directory (str): directory to write GM input/outputs
            input_mol_filepath (str): path to the xyz file containing input mol coords
            multiplicity (str): multiplicity of input mol
            calculation (Calculation object): Calc object for a specific gaussian calculation
            resolve_attempts (int, optional): Defaults to 4. Num of times GM attempts to fix
                gaussian errors
    """

class IrcFwdManager(GaussianManager):
    """GM sub-class which manages single irc-fwd calculations for single molecules. Capable of
        generating gaussian inputs, parsing outputs for info and resolving rudimentary gaussian errors

        Args:
            experiment_directory (str): directory to write GM input/outputs
            input_mol_filepath (str): path to the xyz file containing input mol coords
            multiplicity (str): multiplicity of input mol
            calculation (Calculation object): Calc object for a specific gaussian calculation
            resolve_attempts (int, optional): Defaults to 4. Num of times GM attempts to fix
                gaussian errors
    """