"""Module of methods useful to gaussian_manager"""

from GaussianManager.src import exceptions
import subprocess
import os

def run_gaussian_bash_command(input_filepath, output_filepath):
    """Loads the gaussian module and runs the subprocess.run() bash command for gaussian 2009"""

    subprocess.run("module load gaussian/g09.e01; g09 < {} >& {}".format(input_filepath,
                                                                         output_filepath),
                   shell=True,
                   check=True)

def get_coords_from_obabel_xyz(filepath):

    with open(filepath, 'r') as file:
            coordinates = file.readlines()[2:]
    return coordinates

def write_input_file(**kwargs):
    """Writes gaussian input file when provided the proper information.  Required arguments:

        input_filepath -- the path where the input file is written to
        method -- the level of theory used in the calculation
        basis_set -- self explanatory
        calculation_keywords -- the keywords gaussian requires to know which calculation it's running
        reaction_name -- the name of the molecule/reaction the calc is being run on
        multiplicity -- self explanatory
        coordinates -- the xyz coords of the molecule being subjected to gaus calc
    """

    input_filepath = kwargs['input_filepath']
    method = kwargs['method']
    basis_set = kwargs['basis_set']
    calculation_keywords = kwargs['calculation_keywords']
    reaction_name = kwargs['reaction_name']
    multiplicity = kwargs['multiplicity']
    coordinates = kwargs['coordinates']

    with open(input_filepath, 'w') as file:
        file.write('# {}/{} {}\n\n'.format(method, basis_set, calculation_keywords))
        file.write(reaction_name + '\n\n')
        file.write(multiplicity + '\n')
        file.write(''.join(line for line in coordinates))
        file.write('\n\n')

def discover_gaussian_error_code(output_filepath):
    """Searches a provided output file for a specific string on the 3rd last line which dictates
            The error code gaussian is throwing and returns the error code
    """

    with open(output_filepath, 'r') as file:
        error_line = file.readlines()[-3]
    error_code = error_line.split('.exe')[0].split('/')[-1]

    return error_code

def read_file_lines(file_path):
    """Used by resolve_error methods to get the required information and log attempts appropriately"""

    with open(file_path, 'r') as file:
        lines = file.readlines()

    return lines

def write_file_from_lines(filepath, lines, obabel_name=None):
    """Writes all provided lines to a provided file"""

    filepath = sanitize_path(filepath)

    if obabel_name is not None:
        lines.insert(0, obabel_name + '\n')
        lines.insert(0, str(len(lines) - 1) + '\n')

    with open(filepath, 'w') as file:
        for line in lines:
            file.write(line)

def log_appropriate_error_code(error, name, log_file):
    """Writes messages specific to error to log_file"""

    error_code = error.args
    if error_code == 'l301':
        error_message = ('Problem with basis set for {0}.'
                        + ' Check to make sure chosen basis set supports all atoms of {0}').format(name)
    if error_code == 'l202':
        error_message = 'Proximity error with {0}, check to make sure atoms are spaced far enough apart'.format(name)
    else:
        error_message = 'unknown error {0} encountered with {1}, unable to resolve'.format(error_code, name)

    print('error code {0} encountered with {1}, logging...'.format(error_code, name))
    with open(log_file, 'a') as file:
        file.write(error_message)

#NOTE: If adding support for more atom types, add to dictionary here!
def parse_output_lines_for_coordinates(lines):
    """Slices a provided list of output lines for the final geometry found in the output file.
        Returns a list of lines containing the geometry coordinates
    """

    atom_num_dict = {'53': 'I',
                     '35': 'Br',
                     '17': 'Cl',
                     '16': 'S',
                     '15': 'P',
                     '9' : 'F',
                     '8' : 'O',
                     '7': 'N',
                     '6' : 'C',
                     '1' : 'H'}

    end_idx = None
    for i, l in enumerate(reversed(lines)):
        #Catch the ending of coordinates
        if end_idx is None and 'Distance matrix (angstroms):' in l:
            end_idx = i
        #Catch the beginning of the coords
        if 'Input orientation:' in l:
            beginning_idx = i
            break

    #Check to make sure coordinate chunk indices can be found
    if end_idx is None:
        raise exceptions.GaussianUtilsError('unable to find key phrases in lines to sanitize coordinates')

    #Pull out from 'Input Orientation' to 'Distance Matrix'
    raw_coord_lines = lines[-beginning_idx: -end_idx - 1]

    #Remove all additional info from coordinates to leave simply atomic symbol and xyz coordinates
    sanitized_coord_lines = []
    for line in raw_coord_lines:

        if "---------------" in line or "Coordinates" in line or "Number" in line:
            continue

        #Remove the the space before atomic_num and the space between atomic_num and coordinates
        line = line[15:]
        line = line[:3] + '                  ' + line[20:]

        #Swap out atomic_num for the element symbol
        for key, value in atom_num_dict.items():
            if key in line[:3]:
                line = value + line[3:]
                sanitized_coord_lines.append(line)
                break
        else:
            raise exceptions.GaussianUtilsError('Attempting to parse unsupported atom type')

    return sanitized_coord_lines

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
