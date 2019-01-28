import exceptions
import gaussian_manager
import os
import pytest
import tempfile as temp

test_dir = '~/dev/python/gaussian-manager/tests/example/'
input_mol_path = test_dir + 'xyz/F-CH3-OH.xyz'
input_filepath = test_dir + 'example-input.com'
output_filepath = test_dir + 'example-output.log'
method1 = 'mp2'
method2 = 'b3lyp'
basis_set1 = '6-31G'
basis_set2 = 'cc-pVTZ'
calculation1 = 'ts-opt'
calculation2 = 'irc'

class TestGaussianManager:
    """Super class for GM testing classes containing useful methods"""

    def _construct_instance_attributes_gm(self):

        root_exp_dir = temp.mkdtemp()
        gm = gaussian_manager.GaussianManager(input_molecule_path=input_mol_path,
                                              root_experiment_dir=root_exp_dir,
                                              method=method1,
                                              basis_set=basis_set1,
                                              calculation=calculation1)
        return gm

    def _construct_method_attributes_gm(self):

        gm = gaussian_manager.GaussianManager()
        return gm

class TestInputGeneration(TestGaussianManager):
    """Tests the various ways of using gaussian_manager.generate_gaussian_input()"""

    def test_instance_attributes_creates_inputfile(self):

        gm = super()._construct_instance_attributes_gm()
        gm.generate_gaussian_input()
        assert os.path.isfile(gm.input_filepath)

    def test_method_attributes_creates_inputfile(self):
        input_dest = temp.mkdtemp()
        input_filepath = input_dest + 'input.com'
        gm = super()._construct_method_attributes_gm()
        gm.generate_gaussian_input(molecule_filepath=input_mol_path,
                                   input_filepath=input_filepath,
                                   method=method2,
                                   basis_set=basis_set2)
        assert os.path.isfile(input_filepath)

    def test_no_attributes_raises_assertion_error(self):
        gm = super()._construct_method_attributes_gm()
        with pytest.raises(AttributeError):
            gm.generate_gaussian_input()
