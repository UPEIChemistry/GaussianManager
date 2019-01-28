import exceptions
import gaussian_utils
import os
import pytest
import subprocess
import tempfile

test_directory = '/home/riley/dev/python/gaussian-manager/tests/'


def get_blank_IO():
    input_filepath = tempfile.mkstemp()
    output_filepath = tempfile.mkstemp()

    return input_filepath, output_filepath

def get_real_IO():

    input_filepath = test_directory + 'example/example-input.com'
    output_filepath = test_directory + 'example/example-output.log'

    return input_filepath, output_filepath

class TestGaussianUtils:


    def run_bash_command_complete_successfully(self):

        input_filepath, output_filepath = get_blank_IO()
        gaussian_utils.run_gaussian_bash_command(input_filepath, output_filepath)

    def test_run_bash_command_throw_error(self):

        input_filepath, output_filepath = get_blank_IO()
        with pytest.raises(subprocess.CalledProcessError):
            gaussian_utils.run_gaussian_bash_command(input_filepath, output_filepath)

    def test_get_coords_from_xyz(self):

        molecule = test_directory + 'example/xyz/F-CH3-OH.xyz'
        true_first_line = 'F          0.00000        0.00000        0.00000'
        true_last_line = 'H          4.12408        0.00000       -0.82631'

        coords = gaussian_utils.get_coords_from_xyz(molecule)

        assert (true_first_line in coords[0] and true_last_line in coords[-1])

    def test_write_output_file(self):

        true_first_line = '# mp2/6-31G OPT(TS, CALFC, NOEIGEN) FREQ'
        true_last_line = '\n'
        _, input_file = tempfile.mkstemp()

        gaussian_utils.write_input_file(input_filepath=input_file,
                                        method='mp2',
                                        basis_set='6-31G',
                                        calculation_keywords='OPT(TS, CALFC, NOEIGEN) FREQ',
                                        reaction_name='foo_bar',
                                        multiplicity='-1 1',
                                        coordinates = 'X        1.00000     1.00000     1.00000')
        with open(input_file, 'r') as file:
            lines = file.readlines()

        assert (true_first_line in lines[0] and true_last_line == lines[-1])

    def test_discover_l101_gaussian_error_code(self):

        output_filepath = test_directory + 'example/l101_output.log'
        true_code = 'l101'

        test_code = gaussian_utils.discover_gaussian_error_code(output_filepath)
        assert test_code == true_code

    def test_discover_l502_gaussian_error_code(self):

        output_filepath = test_directory + 'example/l502_output.log'
        true_code = 'l502'

        test_code = gaussian_utils.discover_gaussian_error_code(output_filepath)
        assert test_code == true_code

    def test_discover_l9999_gaussian_error_code(self):

        output_filepath = test_directory + 'example/l9999_output.log'
        true_code = 'l9999'

        test_code = gaussian_utils.discover_gaussian_error_code(output_filepath)
        assert test_code == true_code
