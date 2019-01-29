import exceptions
import gaussian_manager
import os
import pytest
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
