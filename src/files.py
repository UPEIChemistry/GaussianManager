from GaussianManager.src import calculations, exceptions, utils
import os
import matplotlib.pyplot as plt
import subprocess
from typing import List, Type, Union

class InputFile(object):
    """Wrapper which represents a gaussian input file, allowing for better customization of
            contained mol coords & calc kws

            Args:
                filepath (str): path to the gaussian input file
                calculation (Calculation object): The calc to be run by gaussian
                molecule_name (str): the name of the molecule
                mol_coords (list): List of lines containing xyz coords for mol, should end with a
                    newline character
                multiplicity (str): multiplicity of the provided molecule
    """

    def __init__(self,
                 filepath: str,
                 calculation: calculations.Calculation,
                 molecule_name: str,
                 mol_coords: List[str],
                 multiplicity: str):

        self.filepath = filepath
        self.calculation = calculation
        self.molecule_name = molecule_name
        self.mol_coords = mol_coords
        self.multiplicity = multiplicity

    @staticmethod
    def factory(filepath: str,
                calculation: calculations.Calculation,
                molecule_name: str,
                mol_coords: Union[List[str], List[List]],
                multiplicity: str):
        """Static factory method which returns the proper input file based on provided calc

            Args:
                filepath (str): path to the gaussian input file
                calculation (Calculation object): The calc to be run by gaussian
                molecule_name (str): the name of the molecule
                mol_coords (list): List of lines containing xyz coords for mol, should end with a
                    newline character. IF CALC IS QST3: List of list of lines containing xyz coords for ts,
                    reactant, and product, IN THAT ORDER. Lines should end with a newline character
                multiplicity (str): multiplicity of the provided molecule

            Returns:
                OutputFile object
        """

        if calculation.name == 'qst3':

            inp = QST3InputFile(filepath, calculation, molecule_name, mol_coords, multiplicity)

        elif calculation.name == 'qst2':

            inp = QST2InputFile(filepath, calculation, molecule_name, mol_coords, multiplicity)

        else:

            inp = InputFile(filepath, calculation, molecule_name, mol_coords, multiplicity)

        return inp

    def write(self):
        """Write the input file in the proper gaussian format"""

        #Write file lines according to gaussian requirements
        with open(self.filepath, 'w') as file:
            file.write(self.calculation.get_calc_line() + '\n\n')
            file.write(self.molecule_name + '\n\n')
            file.write(self.multiplicity + '\n')
            file.write(''.join(line for line in self.mol_coords))
            file.write('\n\n')

class QST3InputFile(InputFile):
    """Wrapper which represents a gaussian input file, allowing for better customization of
            contained mol coords & calc kws

            Args:
                filepath (str): path to the gaussian input file
                calculation (Calculation object): The calc to be run by gaussian
                molecule_name (str): the name of the molecule
                mol_coords (list): List of list of lines containing xyz coords for reactant,
                product, and ts **IN THAT ORDER**. Lines should end with a newline character
                multiplicity (str): multiplicity of the provided molecule
    """

    def write(self):
        """Write the QST3 input file in the proper gaussian format"""

        #Write lines according to qst3 requirements for gaussian
        with open(self.filepath, 'w') as file:
            file.write(self.calculation.get_calc_line() + '\n\n')

            #Mol coords have to specified r -> p -> ts, otherwise gaussian will complain
            for coords, name in zip(self.mol_coords, ('reactant', 'product', 'ts')):
                file.write(self.molecule_name + ' {}\n\n'.format(name))
                file.write(self.multiplicity + '\n')
                file.write(''.join(line for line in coords))
                file.write('\n')

            file.write('\n')

class QST2InputFile(QST3InputFile):
    """Wrapper which represents a gaussian input file, allowing for better customization of
            contained mol coords & calc kws

            Args:
                filepath (str): path to the gaussian input file
                calculation (Calculation object): The calc to be run by gaussian
                molecule_name (str): the name of the molecule
                mol_coords (list): List of list of lines containing xyz coords for reactant and
                product **IN THAT ORDER**. Lines should end with a newline character
                multiplicity (str): multiplicity of the provided molecule
    """

class OutputFile(object):
    """Wrapper for gaussian output files, linked to an InputFile instance. Allows for greater
            customization of output file internals

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to this output file
                output_mol_path (str)
    """

    def __init__(self,
                 filepath: str,
                 input_file: InputFile,
                 output_mol_path: str):

        self.filepath = filepath
        self.input_file = input_file
        self.output_mol_path = utils.sanitize_path(output_mol_path)
        self.mol_name = utils.get_file_name(output_mol_path)

        #Define attributes which will be assigned later
        self.molecule_coords = None
        self.converge_metrics = None
        self.converge_fig_dir = None

    @staticmethod
    def factory(filepath: str, input_file: InputFile, output_mol_path):
        """Static factory method which returns the proper output file based on provided InputFile

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to the returned output file

            Returns:
                OutputFile object
        """

        name = input_file.calculation.name

        if name == 'ts' or name == 'qst3' or name =='gopt_reverse' or name == 'gopt_forward':

            out = TsoptOutputFile(filepath, input_file, output_mol_path)

        elif name == 'irc_forward':

            out = IrcFwdOutputFile(filepath, input_file, output_mol_path)

        elif name == 'irc_reverse':

            out = IrcRevOutputFile(filepath, input_file, output_mol_path)

        return out

    def write(self):
        """Runs the gaussian bash command for linked InputFile to write the output file

            Raises:
                exceptions.GaussianOutputError: Raised if gaussian throws an error during the calc
        """

        meth = self.input_file.calculation.method
        calc_name = self.input_file.calculation.name
        inp_mol = self.input_file.molecule_name

        try:
            print('writing {} {} output file for {}...'.format(meth, calc_name, inp_mol))
            utils.run_gaussian_bash_command(self.input_file.filepath, self.filepath)

        #Catch when gaussian errors out, parse error code and raise it
        except subprocess.CalledProcessError:
            code = utils.discover_gaussian_error_code(self.filepath)
            print('encountered error ({}) while writing {} output for {}'.format(code,
                                                                                 calc_name,
                                                                                 inp_mol))
            raise exceptions.GaussianOutputError(code)

    def parse_xyz(self) -> List[str]:
        """Searches the output file for the latest xyz coords for the output mol"""

        try:
            self.molecule_coords = utils.get_coords(self.filepath)

        #Raised if there are no coordinates to find, or if there's an unknown atom being parsed
        except exceptions.GaussianUtilsError as e:
            raise exceptions.GaussianOutputError(e.args[0])
        else:
            return self.molecule_coords

    def write_obabel_xyz(self):
        """Converts the xyz coords contained within the output file to obabel format"""

        #Make sure self has coords parsed already
        if self.molecule_coords is None:
            self.parse_xyz()

        #Write mol in obabel format
        with open(self.output_mol_path, 'w') as file:
            file.write(str(len(self.molecule_coords)) + '\n')
            file.write(self.mol_name + '\n')
            for line in self.molecule_coords:
                file.write(line)

    def get_converge_metrics(self):
        """MUST BE OVERRIDDEN. Abstract method for parsing metrics from output file. Must be implemented for specific
            OutputFile subclasses, as each calculation produces a different output file"""

        raise NotImplementedError('Using base OutputFile, must use subclass')

    def display_covergence(self, display_plot=False, save_plot=True):
        """MUST BE OVERIDDEN. Abstract method for displaying parsed metrics. Must be implemented
            for specific OutputFile subclasses, as each calc produces different output files"""

        raise NotImplementedError('Using base OutputFile, must use subclass')

class TsoptOutputFile(OutputFile):
    """Wrapper for gaussian output files, linked to an InputFile instance. Allows for greater
            customization of output file internals

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to this output file
                output_mol_path (str)
    """

    def __init__(self,
                 filepath: str,
                 input_file: InputFile,
                 output_mol_path: str):

        super().__init__(filepath,
                         input_file,
                         output_mol_path)

        #Define attributes to be overwritten later
        self.freqs = None
        self.freq_path = None

    def parse_freq(self) -> List:
        """Parse the vibrational frequencies from an output file"""

        self.freqs = utils.get_freqs(self.filepath)

        return self.freqs

    def write_freq(self):
        """Write frequencies to a txt file"""

        #Make sure self has freqs already parsed
        if self.freqs is None:
            self.parse_freq()

        #Define where to write the freqs to
        self.freq_path = (utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
                + self.mol_name
                + '_freqs.txt')
        utils.write_frequencies(self.freq_path, self.freqs)

    def get_converge_metrics(self) -> List:
        """Gets the 4 tsopt convergence metrics"""

        self.converge_metrics = utils.get_tsopt_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self, display_plot: bool=False, save_plot: bool=True):
        """Uses matplotlib to write convergence curves to png files"""

        #Make sure self already has parsed converge_metrics
        if self.converge_metrics is None:
            self.get_converge_metrics()

        #Define where to store the figures
        self.converge_fig_dir = utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)

        #Set interactive to off so the figures aren't displayed during the run
        plt.ioff()

        #Define a figure, create a plot in that figure, then save the figure
        plt.figure()
        plt.plot(self.converge_metrics[:, :2])
        plt.legend(['max_force', 'rms_force'])
        if save_plot:
            plt.savefig(self.converge_fig_dir + 'force_convergence.png', bbox_inches='tight')

        #Define another figure, create plot and save figure
        plt.figure()
        plt.plot(self.converge_metrics[:, 2:])
        plt.legend(['max_displacement', 'rms_displacement'])
        if save_plot:
            plt.savefig(self.converge_fig_dir + 'displacement_convergence.png', bbox_inches='tight')

        if display_plot:
            plt.show()

class IrcFwdOutputFile(OutputFile):
    """Wrapper for gaussian output files, linked to an InputFile instance. Allows for greater
            customization of output file internals

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to this output file
                output_mol_path (str)
    """

    def get_converge_metrics(self):

        self.converge_metrics = utils.get_ircfwd_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self):

        pass

class IrcRevOutputFile(OutputFile):
    """Wrapper for gaussian output files, linked to an InputFile instance. Allows for greater
            customization of output file internals

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to this output file
                output_mol_path (str)
    """

    def get_converge_metrics(self):

        self.converge_metrics = utils.get_ircrev_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self):

        pass
