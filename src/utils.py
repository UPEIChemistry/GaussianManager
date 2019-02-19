from GaussianManager.src import exceptions
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

def get_coords_from_obabel_xyz(filepath):
    """Returns the coordinate section of an obabel xyz file as a list of lines"""

    with open(filepath, 'r') as file:
            coordinates = file.readlines()[2:]
    return coordinates

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

def get_file_lines(path):

    with open(path, 'r') as file:
        lines = file.readlines()

    return lines

def get_crude_coords(path):

    lines = get_file_lines(path)
    for i, l in enumerate(reversed(lines)):

        if end_idx is None and 'Distance matrix (angstroms):' in l:
            end_idx = i
        if 'Input orientation:' in l:
            beginning_idx = i
            break
    if end_idx is None:
        raise exceptions.GaussianUtilsError('unable to find key phrases in lines to sanitize coordinates')
    crude_coords = lines[-beginning_idx: -end_idx - 1]

    return crude_coords

def sanitize_coords(lines):

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

    sanit_coords = []
    for line in lines:

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

def get_crude_freqs(path):

    lines = get_file_lines(path)
    for line in lines:
        if 'imaginary frequencies' in line:
            start_idx = lines.index(line)
        elif 'Thermochemistry' in line:
            end_idx = lines.index(line)

    return lines[start_idx:end_idx]

def sanitize_freqs(lines):

    num_imag_freq = lines[0][10:12]
    freqs = []
    for line in lines:
        if 'Frequencies' in line:
            parts = line.split(' ')
            freqs.extend((parts[-1], parts[-2], parts[-3]))
    freqs.insert(0, num_imag_freq)

    return freqs

def validate_single_imag_freq(freqs):

    if '1' in freqs[0]:
        return True
    else:
        return False

def get_converge_metrics(path):

    metric_list = []

    lines = get_file_lines(path)
    for line in lines:
        if 'Converged?' in line:
            idx = lines.index(line)
            metrics = lines[idx + 1: idx + 5]
            met_dict = {'max_force' : None,
                        'rms_force' : None,
                        'max_displ' : None,
                        'rms_displ' : None}
            for key in met_dict:
                met_dict[key] = int(metrics[0].split(' ')[-3])
            metric_list.append(met_dict)

    return metric_list
