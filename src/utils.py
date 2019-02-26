from GaussianManager.src import exceptions
import numpy as np
import os
import subprocess

def sanitize_path(path, add_slash=False):
    """Expand user in path and add final slash if not present and toggled"""

    if add_slash:
        if path[-1] != '/':
            path = path + '/'
    path = os.path.expanduser(path)

    return path

def make_dir(path, overwrite=False, verbose=False):
        """Method for creating directories"""

        if os.path.isdir(path):
            if overwrite:
                os.removedirs(path)
                os.makedirs(path)
            if verbose:
                print(path + ' already exists')
        else:
            os.makedirs(path)
            if verbose:
                print(path + ' created')

def get_file_lines(path):

    with open(path, 'r') as file:
        lines = file.readlines()

    return lines

def run_gaussian_bash_command(input_filepath, output_filepath):
    """Loads the gaussian module and runs the subprocess.run() bash command for gaussian 2009"""

    subprocess.run("module load gaussian/g09.e01; g09 < {} >& {}".format(input_filepath,
                                                                         output_filepath),
                                                                         shell=True,
                                                                         check=True)

def discover_gaussian_error_code(output_filepath):
    """Searches a provided output file for a specific string on the 3rd last line which dictates
            The error code gaussian is throwing and returns the error code
    """

    with open(output_filepath, 'r') as file:
        error_line = file.readlines()[-3]
    error_code = error_line.split('.exe')[0].split('/')[-1]

    return error_code

def print_error_message(code=None, name=None, calc=None, message=None):
    """Writes message to std output when GM encounters an error with Gaussian"""

    if message is None:
        message = 'encountered ({0}) running {1} on {2}'.format(code, calc, name)
    print(message)

def get_coords_from_obabel_xyz(filepath):
    """Returns the coordinate section of an obabel xyz file as a list of lines"""

    with open(filepath, 'r') as file:
            coordinates = file.readlines()[2:]
    return coordinates

def get_coords(path):
    """parses the coordinates from the output file at path"""

    atom_num_dict = {'53': 'I',
                     '35': 'Br',
                     '34': 'Se',
                     '17': 'Cl',
                     '16': 'S',
                     '15': 'P',
                     '14': 'Si',
                     '9' : 'F',
                     '8' : 'O',
                     '7': 'N',
                     '6' : 'C',
                     '1' : 'H'}

    lines = get_file_lines(path)
    beginning_idx = None
    end_idx = None

    for i, l in enumerate(reversed(lines)):

        if end_idx is None and 'Distance matrix (angstroms):' in l:
            end_idx = i
        if 'Input orientation:' in l:
            beginning_idx = i
            break
    if end_idx is None or beginning_idx is None:
        raise exceptions.GaussianUtilsError('unable to find key phrases in lines to sanitize coordinates')
    crude_coords = lines[-beginning_idx: -end_idx - 1]

    sanit_coords = []
    for line in crude_coords:
        if "---------------" in line or "Coordinates" in line or "Number" in line:
            continue
        line = line[15:]
        line = line[:3] + '                  ' + line[20:]
        for key, value in atom_num_dict.items():
            if key in line[:3]:
                line = value + line[3:]
                sanit_coords.append(line)
                break
        else:
            raise exceptions.GaussianUtilsError('Attempting to parse unsupported atom type')

    return sanit_coords

def get_freqs(path):
    """Parses the imag freqs from output file at path"""

    lines = get_file_lines(path)
    for line in lines:
        if 'imaginary frequencies (negative Signs)' in line:
            start_idx = lines.index(line)
        elif 'Thermochemistry' in line:
            end_idx = lines.index(line)
    crude_freqs = lines[start_idx:end_idx]

    num_imag_freq = crude_freqs[0][10:13].replace(' ', '')
    freqs = []
    for line in crude_freqs:
        if 'Frequencies' in line:
            parts = line.split()
            freqs.extend((parts[-3], parts[-2], parts[-1]))
    freqs.insert(0, num_imag_freq)

    return freqs

def validate_single_imag_freq(freqs):
    """Checks a list of freqs for correct num of imag freqs"""

    if '1' in freqs[0]:
        return True
    else:
        return False

def write_frequencies(path, freqs):
    """write a list of freqs to a path"""

    with open(path, 'w') as file:
        for line in freqs:
            file.write(line + '\n')

def get_tsopt_converge_metrics(path):
    """Parses a tsopt output file for the tsopt converge metrics"""

    lines = get_file_lines(path)

    iterations = []
    for idx, line in enumerate(lines):
        if 'Converged?' in line:
            iterations.append(lines[idx + 1: idx + 5])

    metrics_array = np.zeros((len(iterations), 4))
    for i, itr in enumerate(iterations):
        for j, line in enumerate(itr):
            metric = float(line.split()[-3])
            metrics_array[i][j] = metric

    return metrics_array

def get_ircfwd_converge_metrics(path):
    """Parse irc output file for converge metrics"""

    return np.zeros((5, 4))

def get_ircrev_converge_metrics(path):
    """Parse irc output file for converge metrics"""

    return np.zeros((5, 4))

def log_error(path, mol, e):
    """Logs the error message for a provided mol to a provided path"""

    name = os.path.basename(mol)[:4]
    msg = e.args[0]
    error_message = '{} on {}'.format(msg, name)

    print(error_message)
    with open(path, 'a') as file:
        file.write(error_message + '\n')

def compile_geom(geom_dir, m_path):
    """Copies the geometry from a provided molecule path to a provided geometry directory"""

    geom_dir = sanitize_path(geom_dir, add_slash=True)
    m_path = sanitize_path(m_path)

    subprocess.run('cp {} {}'.format(m_path, geom_dir), check=True, shell=True)
