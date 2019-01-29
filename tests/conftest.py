import gaussian_manager
import pytest
import tempfile
import os

example_directory = '/home/riley/dev/python/gaussian-manager/tests/example/'

@pytest.fixture(scope='module')
def instance_attribute_gm():

    _, exp_dir = tempfile.mkstemp()
    gm = gaussian_manager.GaussianManager(input_molecule_path=example_directory + 'xyz/F-CH3-OH.xyz',
                                              root_experiment_dir=exp_dir,
                                              method='mp2',
                                              basis_set='6-31G',
                                              calculation='ts-opt')
    return gm

@pytest.fixture(scope='session')
def method_attribute_gm():

    gm = gaussian_manager.GaussianManager()
    return gm

@pytest.fixture(scope='session')
def blank_input_filepath():

    _, file = tempfile.mkstemp()

    return file

@pytest.fixture(scope='session')
def l101_input_filepath():

    return example_directory + 'l101_input.com'

@pytest.fixture(scope='session')
def l202_input_filepath():

    return example_directory + 'l202_input.com'

@pytest.fixture(scope='session')
def successful_input_filepath():

    return example_directory + 'successful_input.com'

@pytest.fixture(scope='session')
def molecule_filepath():

    return example_directory + 'xyz/F-CH3-OH.xyz'

@pytest.fixture(scope='session')
def successful_output_filepath():

    return example_directory + 'successful_output.log'

@pytest.fixture(scope='session')
def blank_output_filepath():

    return tempfile.mkstemp()

@pytest.fixture(scope='session')
def l101_output_filepath():

    return example_directory + 'l101_output.log'

@pytest.fixture(scope='session')
def l301_output_filepath():

    return example_directory + 'l301_output.log'

@pytest.fixture(scope='session')
def l502_output_filepath():

    return example_directory + 'l502_output.log'

@pytest.fixture(scope='session')
def l9999_output_filepath():

    return example_directory + 'l9999_output.log'