import exceptions
import gaussian_manager
import os
import pytest
from  _pytest.monkeypatch import MonkeyPatch
import subprocess
import tempfile as temp

class TestInputGeneration:

    def read_first_last_lines(self, filepath):

        with open(filepath, 'r') as file:
            lines = file.readlines()
        first_line = lines[0]
        last_line = lines[-1]

        return first_line, last_line

    def test_instance_attributes_creates_inputfile(self, instance_attribute_gm):

        gm = instance_attribute_gm
        gm.generate_gaussian_input()
        assert os.path.isfile(gm.input_filepath)

    def test_method_attributes_calculation_no_keywords_creates_inputfile(self,
                                                 method_attribute_gm,
                                                 molecule_filepath,
                                                 blank_input_filepath):

        gm = method_attribute_gm
        input_filepath = blank_input_filepath
        true_first_line = '# mp2/6-31G OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
        true_last_line = '\n'

        gm.generate_gaussian_input(molecule_filepath=molecule_filepath,
                                   input_filepath=input_filepath,
                                   method='mp2',
                                   basis_set='6-31G',
                                   calculation='ts-opt',
                                   multiplicity='-1 1')
        test_first_line, test_last_line = self.read_first_last_lines(input_filepath)
        assert (true_first_line in test_first_line and true_last_line == test_last_line)

    def test_method_attributes_calculation_and_keywords_creates_inputfile(self,
                                                          method_attribute_gm,
                                                          molecule_filepath,
                                                          blank_input_filepath):

        gm = method_attribute_gm
        input_filepath = blank_input_filepath
        true_first_line = '# mp2/6-31G OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
        true_last_line = '\n'

        gm.generate_gaussian_input(molecule_filepath=molecule_filepath,
                                   input_filepath=input_filepath,
                                   method='mp2',
                                   basis_set='6-31G',
                                   calculation_keywords='OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ',
                                   calculation='ts-opt',
                                   multiplicity='-1 1')
        test_first_line, test_last_line = self.read_first_last_lines(input_filepath)
        assert (true_first_line in test_first_line and true_last_line == test_last_line)

    def test_method_attributes_only_keywords_creates_inputfile(self,
                                                          method_attribute_gm,
                                                          molecule_filepath,
                                                          blank_input_filepath):

        gm = method_attribute_gm
        input_filepath = blank_input_filepath
        true_first_line = '# mp2/6-31G OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
        true_last_line = '\n'

        gm.generate_gaussian_input(molecule_filepath=molecule_filepath,
                                   input_filepath=input_filepath,
                                   method='mp2',
                                   basis_set='6-31G',
                                   calculation_keywords='OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ',
                                   multiplicity='-1 1')
        test_first_line, test_last_line = self.read_first_last_lines(input_filepath)
        assert (true_first_line in test_first_line and true_last_line == test_last_line)

class TestRunningGaussian:

    def mock_successful_gaussian_output(self, inp, out):

        print('gaussian bash command mocked!')

    def mock_failed_gaussian_output(self, inp, out):

        raise subprocess.CalledProcessError(1, 'foo')

    def test_instance_attributes_start_calculation_resolve_errors_successful(self,
                                                                             monkeypatch,
                                                                             instance_attribute_gm):

        gm = instance_attribute_gm
        with monkeypatch.context() as m:
            m.setattr('gaussian_utils.run_gaussian_bash_command',
                      self.mock_successful_gaussian_output)
            gm.start_calculation()

    def test_instance_attributes_start_calculation_resolve_errors_l301_failure(self,
                                                                               monkeypatch,
                                                                               instance_attribute_gm,
                                                                               blank_input_filepath,
                                                                               l301_output_filepath):

        gm = instance_attribute_gm
        gm.output_filepath = l301_output_filepath
        with monkeypatch.context() as m:
            m.setattr('gaussian_utils.run_gaussian_bash_command',
                      self.mock_failed_gaussian_output)
            with pytest.raises(exceptions.GMUnsupportedErrorCode) as error:
                gm.start_calculation()
                assert error.args == 'l301'

    def test_instance_attributes_start_calculation_resolve_errors_l101_success(self,
                                                                               monkeypatch,
                                                                               instance_attribute_gm,
                                                                               l101_input_filepath,
                                                                               l101_output_filepath):

        pass

    def test_instance_attributes_start_calculation_resolve_errors_l502_failure(self,
                                                                               monkeypatch,
                                                                               instance_attribute_gm,
                                                                               successful_input_filepath,
                                                                               l502_output_filepath):

        pass

    def test_instance_attributes_start_calculation_no_resolving_successful(self,
                                                                           monkeypatch,
                                                                           instance_attribute_gm):

        gm = instance_attribute_gm
        with monkeypatch.context() as m:
            m.setattr('gaussian_utils.run_gaussian_bash_command',
                      self.mock_successful_gaussian_output)
            gm.start_calculation(resolve_errors=False)

    def test_instance_attributes_start_calculation_no_resolving_failure(self,
                                                                        monkeypatch,
                                                                        blank_input_filepath,
                                                                        l101_output_filepath,
                                                                        instance_attribute_gm):

        gm = instance_attribute_gm
        gm.input_filepath = blank_input_filepath
        gm.output_filepath = l101_output_filepath
        with monkeypatch.context() as m:
            m.setattr('gaussian_utils.run_gaussian_bash_command',
                      self.mock_failed_gaussian_output)
            with pytest.raises(exceptions.GaussianManagerError) as error:
                gm.start_calculation(resolve_errors=False)
                assert error.args == 'l101'
