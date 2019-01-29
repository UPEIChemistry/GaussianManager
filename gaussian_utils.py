"""Module of methods useful to gaussian_manager"""

import subprocess
import os

def run_gaussian_bash_command(input_filepath, output_filepath):
    """Loads the gaussian module and runs the subprocess.run() bash command for gaussian 2009

        Args:
            input_filepath (str): The path to the gaussian input file
            output_filepath (str): The path gaussian should write output files to
    """

    subprocess.run("module load gaussian/g09.e01; g09 < {} >& {}".format(input_filepath,
                                                                         output_filepath),
                   shell=True,
                   check=True)

def get_coords_from_xyz(filepath):

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
            The error code gaussian is throwing

        Args:
            output_filepath (str): Path to the output file corresponding to the errored gaussian job

        Returns:
            (str): The error code thrown by gaussian
    """

    with open(output_filepath, 'r') as file:
        error_line = file.readlines()[-3]
    error_code = error_line.split('.exe')[0].split('/')[-1]

    return error_code

def write_error_log_read_input(error_log, input_filepath, counter):
    """Used by resolve_error methods to get the required information and log attempts appropriately"""

    with open(error_log, 'a') as file:
        file.write(('attempt {0} to resolve convergence error with'
                    + ' input file {1} for ').format(counter, os.path.basename(input_filepath)))
    with open(input_filepath, 'r') as file:
        lines = file.readlines()

    return lines

def write_new_input(old_input_path, lines):
    """Used by resolve_error methods to write a new input file from a list of lines"""

    new_input_filepath = sanitize_path(os.path.dirname(old_input_path),
                                                          add_slash=True) + 'error-resolved-input.com'

    with open(new_input_filepath, 'w') as file:
        for line in lines:
            file.write(line)

    return new_input_filepath

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

def resolve_input_error(**kwargs):
    """Currently only makes sure that the final line has a single newline character on it"""

    input_filepath = kwargs['input_filepath']
    error_log = kwargs['error_log']
    input_counter = kwargs['counters']['input_error_counter']

    old_input_lines = write_error_log_read_input(error_log,
                                                                input_filepath,
                                                                input_counter)

    if old_input_lines[-1] != '\n':
        old_input_lines.append('\n')

    new_input_filepath = write_new_input(input_filepath, old_input_lines)
    return new_input_filepath

#TODO: Add output parser to look for unoptimized structures to write new input file
def resolve_convergence_error(**kwargs):
    """Modifies the SCF(#) keyword in the input file.  Plans to later parse output for
        unoptimized structures to help locate optimums"""

    input_filepath = kwargs['input_filepath']
    error_log = kwargs['error_log']
    converge_counter = kwargs['counters']['converge_error_counter']

    old_input_lines = write_error_log_read_input(error_log,
                                                                input_filepath,
                                                                converge_counter)

    if converge_counter == 1:
        maxcyc = 512
    elif converge_counter == 2:
        maxcyc = 1024
    elif converge_counter >= 3:
        maxcyc = 2084

    before_SCF, after_SCF = old_input_lines[0].split('SCF')
    after_SCF = after_SCF[12:]
    new_first_line = before_SCF + 'SCF(maxcyc={})'.format(maxcyc) + after_SCF
    old_input_lines[0] = new_first_line

    new_input_filepath = write_new_input(input_filepath, old_input_lines)
    return new_input_filepath

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