from GaussianManager.src import utils, exceptions
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

class TestUtilsParsers:

    def test_get_coords_from_obabel_xyz(self, molecule_filepath):

        true_first_line = 'F          0.00000        0.00000        0.00000'
        true_last_line = 'H          4.12408        0.00000       -0.82631'

        coords = utils.get_coords_from_obabel_xyz(molecule_filepath)

        assert (true_first_line in coords[0] and true_last_line in coords[-1])

    def test_get_coords_successful(self, successful_tsopt_output_filepath):

        true_first = '0.071970    0.000000   -0.051566'
        true_last = '3.932450   -0.000000   -0.849101'
        coords = utils.get_coords(successful_tsopt_output_filepath)

        assert true_first in coords[0] and true_last in coords[-1]

    def test_get_coords_throw_error(self, molecule_filepath):

        with pytest.raises(exceptions.GaussianUtilsError):
            _ = utils.get_coords(molecule_filepath)

    def test_get_freqs(self, successful_tsopt_output_filepath):

        true_first = '1'
        true_second = '-592.4158'
        true_last = '3817.0445'
        freqs = utils.get_freqs(successful_tsopt_output_filepath)

        assert true_first in freqs[0] and true_second in freqs[1] and true_last in freqs[-1]

    def test_get_converge_metrics_successful_output(self, successful_tsopt_output_filepath):

        true_first = (0.014857, 0.006818, 0.365507, 0.096450)
        true_last = (0.000043, 0.000019, 0.000746, 0.000210)

        metrics = utils.get_tsopt_converge_metrics(successful_tsopt_output_filepath)

        for i, val in enumerate(true_first):
            assert val == metrics[0][i]

        for i, val in enumerate(true_last):
            assert val == metrics[-1][i]