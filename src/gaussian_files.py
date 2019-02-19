from GaussianManager.src import exceptions, utils
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
        self.molecule_coords = None

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

        crude_coords = utils.get_crude_coords(self.filepath)
        self.molecule_coords = utils.sanitize_coords(crude_coords)

        return self.molecule_coords

    def write_obabel_xyz(self):

        path = (utils.sanitize_path(os.path.dirname(self.filepath), add_slash=True)
                + self.input_file.molecule_name
                + '.xyz')
        with open(path, 'w') as file:
            file.write(str(len(self.input_file.mol_coords)) + '\n')
            file.write(self.input_file.molecule_name)
            for line in self.molecule_coords:
                file.write(line)

    def get_converge_metrics(self):

        self.converge_metrics_list = utils.get_converge_metrics(self.filepath)

    def display_covergence(self):

        for key in ('max_force', 'rms_force', 'max_displ', 'rms_displ'):
            plot = [x[key] for x in self.converge_metrics_list]
            plt.plot(plot)
            plt.ylabel(key + ' convergence')
            plt.show()

class FreqOutputFile(OutputFile):

    def parse_freq(self):

        crude_freqs = utils.get_crude_freqs(self.filepath)
        self.freqs = utils.sanitize_freqs(crude_freqs)

        return self.molecule_coords