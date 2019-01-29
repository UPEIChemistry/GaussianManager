import exceptions
import gaussian_utils
import os
from _pytest.monkeypatch import MonkeyPatch
import pytest
import socket
import subprocess
import tempfile

class TestGaussianUtils:

    @pytest.mark.skipif('gra' not in socket.gethostname() or 'ced' not in socket.gethostname(),
                        reason='Only test on supercomputer clusters as they have the gaussian software package')
    def test_run_bash_command_complete_successfully(self, input_filepath, blank_output_filepath):

        output_filepath = blank_output_filepath
        gaussian_utils.run_gaussian_bash_command(input_filepath, output_filepath)

    @pytest.mark.skipif('gra'  in socket.gethostname() or 'ced'  in socket.gethostname(),
                        reason="Don't test this if on either cedar or graham")
    def test_run_mock_bash_command_complete_successfully(self, monkeypatch, input_filepath):

        def mock_successful_gaussian_job(inp, out):

            print("I'm here!")

        output_filepath = 'foo/bar/output.log'

        with monkeypatch.context() as m:
            m.setattr('gaussian_utils.run_gaussian_bash_command',
                      mock_successful_gaussian_job)
            gaussian_utils.run_gaussian_bash_command(input_filepath, output_filepath)

    def test_run_bash_command_throw_error(self, bad_input_filepath):

        _, output_filepath = tempfile.mkstemp()

        with pytest.raises(subprocess.CalledProcessError):
            gaussian_utils.run_gaussian_bash_command(bad_input_filepath, output_filepath)

    def test_get_coords_from_xyz(self, molecule_filepath):

        true_first_line = 'F          0.00000        0.00000        0.00000'
        true_last_line = 'H          4.12408        0.00000       -0.82631'

        coords = gaussian_utils.get_coords_from_xyz(molecule_filepath)

        assert (true_first_line in coords[0] and true_last_line in coords[-1])

    def test_write_input_file(self, blank_input_filepath):

        input_file = blank_input_filepath
        true_first_line = '# mp2/6-31G OPT(TS, CALFC, NOEIGEN) FREQ'
        true_last_line = '\n'

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

    def test_discover_l101_gaussian_error_code(self, l101_output_filepath):

        true_code = 'l101'

        test_code = gaussian_utils.discover_gaussian_error_code(l101_output_filepath)
        assert test_code == true_code

    def test_discover_l502_gaussian_error_code(self, l502_output_filepath):

        true_code = 'l502'

        test_code = gaussian_utils.discover_gaussian_error_code(l502_output_filepath)
        assert test_code == true_code

    def test_discover_l9999_gaussian_error_code(self, l9999_output_filepath):

        true_code = 'l9999'

        test_code = gaussian_utils.discover_gaussian_error_code(l9999_output_filepath)
        assert test_code == true_code
