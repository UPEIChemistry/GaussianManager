from GaussianManager.src import calculations, gaussian_files, manager, utils, exceptions
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

@pytest.fixture(scope='session')
def input_file():

    mol_path = example_directory + 'xyz/F-CH3-OH.xyz'
    _, path = tempfile.mkstemp()
    coords = utils.get_coords_from_obabel_xyz(mol_path)
    calc = calculations.TsoptCalc('mp2', '6-31G')
    inp = gaussian_files.InputFile(path, calc, 'F-CH3-OH', coords, '-1 1')

    return inp

@pytest.fixture(scope='function')
def gaussian_manager():

    mol_path = example_directory + 'xyz/F-CH3-OH.xyz'
    dr = tempfile.mkdtemp()
    calc = calculations.TsoptCalc('mp2', '6-31G')
    gm = manager.GaussianManager.factory(dr, mol_path, '-1 1', calc)

    return gm
