from GaussianManager.src import manager, utils, exceptions
import pytest
import tempfile

example_directory = '/home/riley/dev/python/GaussianManager/tests/example/'

@pytest.fixture(scope='session')
def molecule_filepath():

    return example_directory + 'xyz/F-CH3-OH.xyz'

@pytest.fixture(scope='function')
def blank_molecule_filepath():

    _, file = tempfile.mkstemp()

    return file

@pytest.fixture(scope='session')
def successful_tsopt_input_filepath():

    return example_directory + 'successful_tsopt_input.com'

@pytest.fixture(scope='session')
def successful_irc_input_filepath():

    return example_directory + 'successful_irc_input.com'

@pytest.fixture(scope='function')
def blank_input_filepath():

    _, file = tempfile.mkstemp()

    return file

@pytest.fixture(scope='session')
def l101_tsopt_input_filepath():

    return example_directory + 'l101_tsopt_input.com'

@pytest.fixture(scope='session')
def l123_irc_input_scf_filepath():

    return example_directory + 'l123_irc_scf_input.com'

@pytest.fixture(scope='function')
def l123_irc_input_no_scf_filepath():

    return example_directory + 'l123_irc_no_scf_input.com'

@pytest.fixture(scope='session')
def successful_tsopt_output_filepath():

    return example_directory + 'successful_tsopt_output.log'

@pytest.fixture(scope='session')
def successful_irc_output_filepath():

    return example_directory + 'successful_irc_output.log'

@pytest.fixture(scope='function')
def blank_output_filepath():

    _, file = tempfile.mkstemp()

    return file

@pytest.fixture(scope='session')
def l101_tsopt_output_filepath():

    return example_directory + 'l101_tsopt_output.log'

@pytest.fixture(scope='session')
def l301_tsopt_output_filepath():

    return example_directory + 'l301_tsopt_output.log'

@pytest.fixture(scope='session')
def l502_irc_output_filepath():

    return example_directory + 'l502_irc_output.log'

@pytest.fixture(scope='session')
def l9999_tsopt_output_filepath():

    return example_directory + 'l9999_tsopt_output.log'
