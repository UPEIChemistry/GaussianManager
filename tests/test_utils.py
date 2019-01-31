from GaussianManager.src import utils, exceptions
import os
import pytest
import socket
import subprocess
import tempfile

class TestUtilsBashCommand:

    @pytest.mark.skipif('gra' not in socket.gethostname() or 'ced' not in socket.gethostname(),
                        reason='Only test on supercomputer clusters as they have the gaussian software package')
    def test_run_bash_command_complete_successfully(self, successful_tsopt_input_filepath, blank_output_filepath):

        output_filepath = blank_output_filepath
        utils.run_gaussian_bash_command(successful_tsopt_input_filepath, output_filepath)

    @pytest.mark.skipif('gra'  in socket.gethostname() or 'ced'  in socket.gethostname(),
                        reason="Don't test this if on either cedar or graham")
    def test_run_mock_bash_command_complete_successfully(self, monkeypatch, successful_tsopt_input_filepath):

        def mock_successful_gaussian_job(inp, out):

            print("I'm here!")

        output_filepath = 'foo/bar/output.log'

        with monkeypatch.context() as m:
            m.setattr('GaussianManager.src.utils.run_gaussian_bash_command',
                      mock_successful_gaussian_job)
            utils.run_gaussian_bash_command(successful_tsopt_input_filepath, output_filepath)

    def test_run_bash_command_throw_error(self, l101_tsopt_input_filepath):

        _, output_filepath = tempfile.mkstemp()

        with pytest.raises(subprocess.CalledProcessError):
            utils.run_gaussian_bash_command(l101_tsopt_input_filepath, output_filepath)

class TestUtilsReadWrite:

    def test_get_coords_from_obabel_xyz(self, molecule_filepath):

        true_first_line = 'F          0.00000        0.00000        0.00000'
        true_last_line = 'H          4.12408        0.00000       -0.82631'

        coords = utils.get_coords_from_obabel_xyz(molecule_filepath)

        assert (true_first_line in coords[0] and true_last_line in coords[-1])

    def test_write_input_file(self, blank_input_filepath):

        input_file = blank_input_filepath
        true_first_line = '# mp2/6-31G OPT(TS, CALFC, NOEIGEN) FREQ'
        true_last_line = '\n'

        utils.write_input_file(input_filepath=input_file,
                                        method='mp2',
                                        basis_set='6-31G',
                                        calculation_keywords='OPT(TS, CALFC, NOEIGEN) FREQ',
                                        reaction_name='foo_bar',
                                        multiplicity='-1 1',
                                        coordinates = 'X        1.00000     1.00000     1.00000')
        with open(input_file, 'r') as file:
            lines = file.readlines()

        assert (true_first_line in lines[0] and true_last_line == lines[-1])

    def test_write_file_from_lines(self,
                                   blank_molecule_filepath,
                                   successful_tsopt_output_filepath):

        lines = utils.read_file_lines(successful_tsopt_output_filepath)
        coords = utils.parse_output_lines_for_coordinates(lines)
        utils.write_file_from_lines(blank_molecule_filepath, coords)

    def test_write_file_from_lines_obabel_heading(self,
                                                  blank_molecule_filepath,
                                                  successful_tsopt_output_filepath):

        obabel_name = 'molecule'
        true_first_line = '7'

        lines = utils.read_file_lines(successful_tsopt_output_filepath)
        coords = utils.parse_output_lines_for_coordinates(lines)
        utils.write_file_from_lines(blank_molecule_filepath, coords, obabel_name=obabel_name)

        test_lines = utils.read_file_lines(blank_molecule_filepath)
        assert true_first_line in test_lines[0] and obabel_name in test_lines[1]

class TestUtilsDiscoverError:

    def test_discover_l101_gaussian_error_code(self, l101_tsopt_output_filepath):

        true_code = 'l101'

        test_code = utils.discover_gaussian_error_code(l101_tsopt_output_filepath)
        assert test_code == true_code

    def test_discover_l502_gaussian_error_code(self, l502_irc_output_filepath):

        true_code = 'l502'

        test_code = utils.discover_gaussian_error_code(l502_irc_output_filepath)
        assert test_code == true_code

    def test_discover_l9999_gaussian_error_code(self, l9999_tsopt_output_filepath):

        true_code = 'l9999'

        test_code = utils.discover_gaussian_error_code(l9999_tsopt_output_filepath)
        assert test_code == true_code

class TestUtilsParser:

    def test_parse_output_lines_for_coordinates_using_good_tsopt_output_successful(self,
                                          successful_tsopt_output_filepath):

        first_atom = 'F'
        first_coords = '0.071970    0.000000   -0.051566'
        last_atom = 'H'
        last_coords = '3.932450   -0.000000   -0.849101'

        test_lines = utils.read_file_lines(successful_tsopt_output_filepath)
        test_lines = utils.parse_output_lines_for_coordinates(test_lines)

        assert first_atom in test_lines[0] and first_coords in test_lines[0]
        assert last_atom in test_lines[-1] and last_coords in test_lines[-1]

    def test_parse_output_lines_for_coordinates_using_l103_tsopt_output_successful(self,
                                                                             l301_tsopt_output_filepath):

        first_atom = 'C'
        first_coords = '0.005228   -0.682773    0.000946'
        line_4_atom = 'Cl'
        line_4_coords = '-0.015741    1.844659   -0.009898'
        last_atom = 'H'
        last_coords = '0.024825   -2.837900   -0.935003'

        test_lines = utils.read_file_lines(l301_tsopt_output_filepath)
        test_lines = utils.parse_output_lines_for_coordinates(test_lines)

        assert first_atom in test_lines[0] and first_coords in test_lines[0]
        assert line_4_atom in test_lines[4] and line_4_coords in test_lines[4]
        assert last_atom in test_lines[-1] and last_coords in test_lines[-1]

    def test_parse_output_lines_for_coordinates_using_bad_output_failure(self, blank_output_filepath):

        lines = utils.read_file_lines(blank_output_filepath)
        with pytest.raises(exceptions.GaussianUtilsError):
            utils.parse_output_lines_for_coordinates(lines)
