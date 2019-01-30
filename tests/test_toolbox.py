from GaussianManager.src import toolbox, exceptions
import os
import pytest
import subprocess
import tempfile as temp

class TestGaussianToolbox:

    def get_true_in_out(self):
        inp = '# mp2/6-31G OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
        out = '\n'

        return inp, out

    def read_first_last_lines(self, path):

        with open(path, 'r') as file:
            lines = file.readlines()
        first_line = lines[0]
        last_line = lines[-1]

        return first_line, last_line

    def mock_successful_gaussian_job(self, inp, out):

        print('gaussian mocked!')

    def mock_failed_gaussian_job(self, inp, out):

        raise subprocess.CalledProcessError(1, 'foo')

    def test_generate_gaussian_input_file_no_keywords_successful(self,
                                                                 molecule_filepath,
                                                                 blank_input_filepath):

        toolbox.generate_gaussian_input_file(molecule_filepath, blank_input_filepath)
        test_first, test_last = self.read_first_last_lines(blank_input_filepath)
        true_first, true_last = self.get_true_in_out()
        assert (true_first in test_first and test_last == true_last)

    def test_generate_gaussian_input_file_calc_and_keywords_successful(self,
                                                                       molecule_filepath,
                                                                       blank_input_filepath):

        toolbox.generate_gaussian_input_file(molecule_filepath,
                                                      blank_input_filepath,
                                                      calculation_keywords='OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ')
        true_first, true_last = self.get_true_in_out()
        test_first, test_last = self.read_first_last_lines(blank_input_filepath)
        assert (true_first in test_first and test_last == true_last)

    def test_start_gaussian_calculation_run_successfully(self,
                                                         monkeypatch,
                                                         successful_tsopt_input_filepath,
                                                         successful_tsopt_output_filepath):


        with monkeypatch.context() as m:
            m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', self.mock_successful_gaussian_job)
            toolbox.start_gaussian_calculation(successful_tsopt_input_filepath, successful_tsopt_output_filepath)

    def test_start_gaussian_calculation_throw_proper_error_code(self,
                                                                monkeypatch,
                                                                l101_tsopt_input_filepath,
                                                                l101_tsopt_output_filepath):

        with pytest.raises(exceptions.GaussianToolboxError) as error:
            with monkeypatch.context() as m:
                m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', self.mock_failed_gaussian_job)
                toolbox.start_gaussian_calculation(l101_tsopt_input_filepath, l101_tsopt_output_filepath)
                assert error.args == 'l101'

    def test_resolve_input_error_successfully_changes_input(self,
                                 l101_tsopt_input_filepath):

        new_input = toolbox.resolve_input_error(l101_tsopt_input_filepath)
        _, true_last = self.get_true_in_out()
        _, test_last = self.read_first_last_lines(new_input)
        assert test_last == true_last

    def test_resolve_converge_error_irc_input_successfully_changes_input(self,
                                    l123_irc_input_filepath):

        true_first = '# mp2/6-31G OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=512) FREQ'

        new_input = toolbox.resolve_convergence_error(l123_irc_input_filepath)
        test_first, _ = self.read_first_last_lines(new_input)
        assert true_first in test_first
