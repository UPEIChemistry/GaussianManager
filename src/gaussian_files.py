from GaussianManager.src import calculations, exceptions, utils
import os
import matplotlib.pyplot as plt
import subprocess

class InputFile(object):
    """Wrapper which represents a gaussian input file, allowing for better customization of
            contained mol coords & calc kws

            Args:
                filepath (str): path to the gaussian input file
                calculation (Calculation object): The calc to be run by gaussian
                molecule_name (str): the name of the moleucle
                mol_coords (list): List of lines containing xyz coords for mol, should end with a
                    newline character
                multiplicity (str): multiplicity of the provided molecule
    """

    def __init__(self,
                 filepath,
                 calculation,
                 molecule_name,
                 mol_coords,
                 multiplicity):

        self.filepath = filepath
        self.calculation = calculation
        self.molecule_name = molecule_name
        self.mol_coords = mol_coords
        self.multiplicity = multiplicity

    def write(self):
        """Write the input file in the proper gaussian format"""

        with open(self.filepath, 'w') as file:
            file.write(self.calculation.get_calc_line() + '\n\n')
            file.write(self.molecule_name + '\n\n')
            file.write(self.multiplicity + '\n')
            file.write(''.join(line for line in self.mol_coords))
            file.write('\n\n')

class OutputFile(object):
    """Wrapper for gaussian output files, linked to an InputFile instance. Allows for greater
            customization of output file internals

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to this output file
                mol_name (str)
    """

    def __init__(self,
                 filepath,
                 input_file,
                 mol_name):

        self.filepath = filepath
        self.input_file = input_file
        self.mol_name = mol_name

        self.obabel_path = None
        self.molecule_coords = None
        self.converge_metrics = None
        self.converge_fig_dir = None

    @staticmethod
    def factory(filepath, input_file, mol_name):
        """Static factory method which returns the proper output file based on provided InputFile

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to the returned output file

            Returns:
                OutputFile object
        """

        if input_file.calculation.name == 'TsoptCalc':

            out = TsoptOutputFile(filepath, input_file, mol_name)

        elif input_file.calculation.name == 'IrcCalcforward':

            out = IrcFwdOutputFile(filepath, input_file, mol_name)

        elif input_file.calculation.name == 'IrcCalcreverse':

            out = IrcRevOutputFile(filepath, input_file, mol_name)

        return out

    def write(self):
        """Runs the gaussian bash command for linked InputFile to write the output file

            Raises:
                exceptions.GaussianOutputError: Raised if gaussian throws an error during the calc
        """

        calc_name = self.input_file.calculation.name

        try:
            print('writing {} output file for {}...'.format(calc_name, self.mol_name))
            utils.run_gaussian_bash_command(self.input_file.filepath, self.filepath)
        except subprocess.CalledProcessError:
            code = utils.discover_gaussian_error_code(self.filepath)
            print('encountered error ({}) while writing {} output for {}'.format(code,
                                                                                 calc_name,
                                                                                 self.mol_name))
            raise exceptions.GaussianOutputError(code)

    def parse_xyz(self):
        """Searches the output file for the latest xyz coords for the output mol"""

        try:
            self.molecule_coords = utils.get_coords(self.filepath)
        except exceptions.GaussianUtilsError as e:
            raise exceptions.GaussianOutputError(e.args[0])
        else:
            return self.molecule_coords

    def write_obabel_xyz(self):
        """Converts the xyz coords contained within the output file to obabel format"""

        if self.molecule_coords is None:
            self.parse_xyz()

        self.obabel_path = (utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
                + self.mol_name
                + '.xyz')
        with open(self.obabel_path, 'w') as file:
            file.write(str(len(self.input_file.mol_coords)) + '\n')
            file.write(self.input_file.molecule_name + '\n')
            for line in self.molecule_coords:
                file.write(line)

    def get_converge_metrics(self):
        """MUST BE OVERRIDDEN. Abstract method for parsing metrics from output file. Must be implemented for specific
            OutputFile subclasses, as each calculation produces a different output file"""

        raise NotImplementedError

    def display_covergence(self, display_plot=False, save_plot=True):
        """MUST BE OVERIDDEN. Abstract method for displaying parsed metrics. Must be implemented
            for specific OutputFile subclasses, as each calc produces different output files"""

        raise NotImplementedError

class TsoptOutputFile(OutputFile):
    """Wrapper for gaussian output files, linked to an InputFile instance. Allows for greater
            customization of output file internals

            Args:
                filepath (str): path to the gaussian output file
                input_file (InputFile object): input file corresponding to this output file
                mol_name (str)
    """

    def __init__(self,
                 filepath,
                 input_file,
                 mol_name):

        super().__init__(filepath,
                         input_file,
                         mol_name)
        self.freqs = None
        self.freq_path = None

    def parse_freq(self):
        """Parse the vibrational frequencies from an output file"""

        self.freqs = utils.get_freqs(self.filepath)

        return self.freqs

    def write_freq(self):
        """Write frequencies to a txt file"""

        if self.freqs is None:
            self.parse_freq()

        self.freq_path = (utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
                + self.mol_name
                + 'freqs.txt')
        utils.write_frequencies(self.freq_path, self.freqs)

    def get_converge_metrics(self):
        """Gets the 4 tsopt convergence metrics"""

        self.converge_metrics = utils.get_tsopt_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self, display_plot=False, save_plot=True):
        """Uses matplotlib to write convergence curves to png files"""

        if self.converge_metrics is None:
            self.get_converge_metrics()

        self.converge_fig_dir = utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
        plt.ioff()

        plt.figure()
        plt.plot(self.converge_metrics[:, :2])
        plt.legend(['max_force', 'rms_force'])
        if save_plot:
            plt.savefig(self.converge_fig_dir + 'force_convergence.png', bbox_inches='tight')

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
                mol_name (str)
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
                mol_name (str)
    """

    def get_converge_metrics(self):

        self.converge_metrics = utils.get_ircrev_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self):

        pass
