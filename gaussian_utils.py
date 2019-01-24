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



def sanitize_path(path, add_slash=False):
    """Expand user in path and add final slash if not present and toggled"""

    if path[-1] != '/':
        path = path + '/'
    path = os.path.expanduser(path)

    return path
