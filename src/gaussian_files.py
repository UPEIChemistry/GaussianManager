from GaussianManager.src import calculations, exceptions, utils
import os
import matplotlib.pyplot as plt
import subprocess

class InputFile(object):

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

        with open(self.filepath, 'w') as file:
            file.write(self.calculation.get_calc_line() + '\n\n')
            file.write(self.molecule_name + '\n\n')
            file.write(self.multiplicity + '\n')
            file.write(''.join(line for line in self.mol_coords))
            file.write('\n\n')

class OutputFile(object):

    def __init__(self,
                 filepath,
                 input_file):

        self.filepath = filepath
        self.input_file = input_file

        self.obabel_path = None
        self.molecule_coords = None
        self.converge_metrics = None
        self.converge_fig_dir = None

    @staticmethod
    def factory(filepath, input_file):

        if input_file.calculation.name == calculations.TsoptCalc.__name__:

            out = TsoptOutputFile(filepath, input_file)

        elif input_file.calculation.name == calculations.IrcFwdCalc.__name__:

            out = IrcFwdOutputFile(filepath, input_file)

        elif input_file.calculation.name == calculations.IrcRevCalc.__name__:

            out = IrcRevOutputFile(filepath, input_file)

        return out

    def write(self):

        calc_name = self.input_file.calculation.name
        mol_name = self.input_file.molecule_name

        try:
            print('writing {} output file for {}...'.format(calc_name, mol_name))
            utils.run_gaussian_bash_command(self.input_file.filepath, self.filepath)
        except subprocess.CalledProcessError:
            code = utils.discover_gaussian_error_code(self.filepath)
            print('encountered error ({}) while writing {} output for {}'.format(code,
                                                                                 calc_name,
                                                                                 mol_name))
            raise exceptions.GaussianOutputError(code)

    def parse_xyz(self):

        try:
            self.molecule_coords = utils.get_coords(self.filepath)
        except exceptions.GaussianUtilsError as e:
            raise exceptions.GaussianOutputError(e.args[0])
        else:
            return self.molecule_coords

    def write_obabel_xyz(self):

        if self.molecule_coords is None:
            self.parse_xyz()

        self.obabel_path = (utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
                + self.input_file.molecule_name
                + '.xyz')
        with open(self.obabel_path, 'w') as file:
            file.write(str(len(self.input_file.mol_coords)) + '\n')
            file.write(self.input_file.molecule_name + '\n')
            for line in self.molecule_coords:
                file.write(line)

    def get_converge_metrics(self):

        raise NotImplementedError

    def display_covergence(self, display_plot=False, save_plot=True):

        raise NotImplementedError

class TsoptOutputFile(OutputFile):

    def __init__(self,
                 filepath,
                 input_file):

        super().__init__(filepath,
                         input_file)
        self.freqs = None
        self.freq_path = None

    def write_obabel_xyz(self):

        with self.input_file.molecule_name as mol_name:
            mol_name += '_transition-state'
            super().write_obabel_xyz()

    def parse_freq(self):

        self.freqs = utils.get_freqs(self.filepath)

        return self.freqs

    def write_freq(self):

        if self.freqs is None:
            self.parse_freq()

        self.freq_path = (utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
                + self.input_file.molecule_name
                + 'freqs.txt')
        utils.write_frequencies(self.freq_path, self.freqs)

    def get_converge_metrics(self):

        self.converge_metrics = utils.get_tsopt_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self, display_plot=False, save_plot=True):

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

    def write_obabel_xyz(self):

        with self.input_file.molecule_name as mol_name:
            mol_name += '_product'
            super().write_obabel_xyz()

    def get_converge_metrics(self):

        self.converge_metrics = utils.get_ircfwd_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self):

        pass

class IrcRevOutputFile(OutputFile):

    def write_obabel_xyz(self):

        with self.input_file.molecule_name as mol_name:
            mol_name += '_reactant'
            super().write_obabel_xyz()

    def get_converge_metrics(self):

        self.converge_metrics = utils.get_ircrev_converge_metrics(self.filepath)

        return self.converge_metrics

    def display_covergence(self):

        pass
