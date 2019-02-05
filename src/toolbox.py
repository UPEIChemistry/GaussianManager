"""Module of methods for operating and running gaussian 2009 jobs. These tools are directly used
    by GaussianManager, but they are not coupled to a GM instance so they can be used freely."""

from GaussianManager.src import utils, exceptions
import os
import subprocess

def generate_gaussian_input_file(molecule_filepath,
                                 input_filepath,
                                 method='mp2',
                                 basis_set='6-31G',
                                 calculation='tsopt',
                                 calculation_keywords=None,
                                 multiplicity='-1 1'):

    #Assign default calculation_keywords
    if calculation_keywords is None:
        common_kws = 'MAXPOINTS=64, STEPSIZE=0.1, CALCFC, VERYTIGHT, INT=ULTRAFINE'

        if calculation == 'tsopt':
            calculation_keywords = 'OPT=(TS, NOEIGEN, {}) SCF(maxcyc=256) FREQ'.format(common_kws)
        elif calculation == 'irc-rev':
            calculation_keywords = 'IRC=(REVERSE, {}) SCF(maxcyc=256)'.format(common_kws)
        elif calculation == 'irc-fwd':
            calculation_keywords = 'IRC=(FORWARD, {}) SCF(maxcyc=256)'.format(common_kws)

    #Sanitize the provided paths
    molecule_filepath = utils.sanitize_path(molecule_filepath)
    input_filepath = utils.sanitize_path(input_filepath)

    #Define the necessary parts for the input file
    input_destination = os.path.dirname(input_filepath)
    reaction_name = os.path.basename(molecule_filepath)[:-4]
    coordinates = utils.get_coords_from_obabel_xyz(molecule_filepath)

    #Create necessary directories for input files
    utils.make_dir(input_destination)

    #Create the input file
    utils.write_input_file(input_filepath=input_filepath,
                                    method=method,
                                    basis_set=basis_set,
                                    calculation_keywords=calculation_keywords,
                                    reaction_name=reaction_name,
                                    multiplicity=multiplicity,
                                    coordinates=coordinates)

def start_gaussian_calculation(input_filepath,
                               output_filepath):

        input_filepath = utils.sanitize_path(input_filepath)
        output_filepath = utils.sanitize_path(output_filepath)

        try:
            utils.run_gaussian_bash_command(input_filepath, output_filepath)
        except subprocess.CalledProcessError:
            error_code = utils.discover_gaussian_error_code(output_filepath)
            raise exceptions.GaussianToolboxError(error_code)

def resolve_input_error(faulty_input_filepath):
    """Currently only makes sure that the final line has a single newline character on it"""

    faulty_input_filepath = utils.sanitize_path(faulty_input_filepath)
    lines = utils.read_file_lines(faulty_input_filepath)

    if lines[-1] != '\n':
        lines.append('\n\n')

    new_filepath = faulty_input_filepath[:-4] + '-input-fixed.com'
    utils.write_file_from_lines(new_filepath, lines)

    return new_filepath

#TODO: Add output parser to look for unoptimized structures to write new input file
def resolve_convergence_error(faulty_input_filepath, maxcyc=512, output_to_parse=None):
    """Modifies the SCF(#) keyword in the input file.  Plans to later parse output for
        unoptimized structures to help locate optimums"""

    faulty_input_filepath = utils.sanitize_path(faulty_input_filepath)
    lines = utils.read_file_lines(faulty_input_filepath)

    if 'SCF' in lines[0]:
        before_SCF, after_SCF = lines[0].split('SCF')
        after_SCF = after_SCF[12:]
        new_first_line = before_SCF + 'SCF(maxcyc={0})'.format(maxcyc) + after_SCF
        lines[0] = new_first_line
    else:
        lines[0] = lines[0][:-1] + ' SCF(maxcyc={0})'.format(maxcyc) + lines[0][-1:]

    new_input_filepath = faulty_input_filepath[:-4] + '-convergence-fixed.com'
    utils.write_file_from_lines(new_input_filepath, lines)

    return new_input_filepath

def write_geometry_from_output(output_filepath, molecule_filepath):

    output_filepath = utils.sanitize_path(output_filepath)
    output_lines = utils.read_file_lines(output_filepath)

    name = os.path.basename(molecule_filepath)[:-4]
    coords = utils.parse_output_lines_for_coordinates(output_lines)
    utils.write_file_from_lines(molecule_filepath, coords, obabel_name=name)

def validate_tsopt_output(output_filepath):

    lines = utils.read_file_lines(output_filepath)
    for line in lines:
        if 'imaginary' in line:
            if '1' in line:
                break
            else:
                raise exceptions.GaussianToolboxError('TSERROR')
