from GaussianManager.src import exceptions
import numpy as np
import os
import subprocess
from typing import List, Type, Union

def sanitize_path(path: str, add_slash: bool=False) -> str:
    """Expand user in path and add final slash if not present and toggled"""

    if add_slash:
        if path[-1] != '/':
            path = path + '/'
    path = os.path.expanduser(path)

    return path

def make_dir(path: str, overwrite: bool=False, verbose: bool=False):
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

def get_file_lines(path: str) -> List:
    """Reads and returns lines from path"""

    with open(path, 'r') as file:
        lines = file.readlines()

    return lines

def run_gaussian_bash_command(input_filepath: str, output_filepath: str):
    """Loads the gaussian module and runs the subprocess.run() bash command for gaussian 2009"""

    subprocess.run("module load gaussian/g09.e01; g09 < {} >& {}".format(input_filepath,
                                                                         output_filepath),
                                                                         shell=True,
                                                                         check=True)

def discover_gaussian_error_code(output_filepath: str) -> str:
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

def get_coords_from_obabel_xyz(filepath: str) -> List:
    """Returns the coordinate section of an obabel xyz file as a list of lines"""

    with open(filepath, 'r') as file:
            coordinates = file.readlines()[2:]
    return coordinates

def get_coords(path: str) -> List:
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
                     '7' : 'N',
                     '6' : 'C',
                     '4' : 'B',
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
        raise exceptions.GaussianUtilsError(('unable to find key phrases in {} '
                                            + 'to sanitize coordinates').format(path))
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
            raise exceptions.GaussianUtilsError(('Attempted to parse unsupported atom '
                                                 + 'type {}').format(line[:3]))

    return sanit_coords

def get_freqs(path: str) -> List:
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
            freqs.extend((float(parts[-3]), float(parts[-2]), float(parts[-1])))
    freqs.insert(0, int(num_imag_freq))

    return freqs

def validate_single_imag_freq(freqs: List) -> bool:
    """Checks a list of freqs for correct num of imag freqs"""

    if 1 == freqs[0]:
        return True
    else:
        return False

def write_frequencies(path: str, freqs: List):
    """write a list of freqs to a path"""

    with open(path, 'w') as file:
        for line in freqs:
            file.write(str(line) + '\n')

def get_tsopt_converge_metrics(path: str) -> Type[np.ndarray]:
    """Parses a tsopt output file for the tsopt converge metrics.

        Returns:
            (np.ndarray object): Array object of shape (num_iterations, 4)"""

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

def get_ircfwd_converge_metrics(path: str) -> Type[np.ndarray]:
    """Parse irc output file for converge metrics"""

    return np.zeros((5, 4))

def get_ircrev_converge_metrics(path: str) -> Type[np.ndarray]:
    """Parse irc output file for converge metrics"""

    return np.zeros((5, 4))

def log_error(path: str, msg: str, verbose=False):
    """Prints error message to console & logs the error message to a provided path"""

    if verbose:
        print(msg)

    with open(path, 'a') as file:
        file.write(msg + '\n')

def copy_file(filepath: str, dest: str):
    """Copies the geometry from a provided molecule path to a provided geometry directory

        Returns:
            dest (str)
    """

    filepath = sanitize_path(filepath)
    dest = sanitize_path(dest)

    subprocess.run('cp {} {}'.format(filepath, dest), check=True, shell=True)

    return dest

def check_newline(lines: List[str]) -> List[str]:
    """If last line is the newline char, remove it and return lines, else do nothing"""

    if lines[-1] != '\n':
            lines = lines[:-1]

    return lines

def get_file_name(path: str) -> str:
    """Removes the file extension & path to give filename"""

    return os.path.splitext(os.path.basename(path))[0]

def insert_suffix(path: str, suffix: str) -> str:
    """Inserts a suffix before file ext of path, will remove existing suffixes (split before '_')"""

    return (os.path.splitext(path)[0]).split('_')[0] + suffix + os.path.splitext(path)[-1]