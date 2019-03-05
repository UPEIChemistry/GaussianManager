from GaussianManager.src import calculations, files, manager, utils, exceptions
import pytest
import tempfile

example = '/home/riley/dev/python/GaussianManager/tests/example/'
exp_dir = example + 'exp/OH-chloromethane/mp2/'

ts_dir = exp_dir + 'ts/'
irc_r_dir = exp_dir + 'irc_reverse/'
irc_f_dir = exp_dir + 'irc_forward/'
qst3_dir = exp_dir + 'qst3/'

@pytest.fixture(scope='session')
def blank_file():

    return tempfile.mkstemp()[-1]

@pytest.fixture(scope='session')
def molecule():

    return example + 'xyz/OH-chloromethane.xyz'

@pytest.fixture(scope='session')
def ts_calc():

    return calculations.TsoptCalc('mp2', '6-31G')

@pytest.fixture(scope='session')
def qst3_calc():

    return calculations.TsoptCalc('mp2', '6-31G', goal='qst3')

@pytest.fixture(scope='session')
def irc_r_calc():

    return calculations.IrcCalc('mp2', '6-31G')

@pytest.fixture(scope='session')
def irc_f_calc():

    return calculations.IrcCalc('mp2', '6-31G', direction='forward')

@pytest.fixture(scope='session')
def ts_input_path():

    return ts_dir + 'input.com'

@pytest.fixture(scope='session')
def ts_output_path():

    return ts_dir + 'output.log'

@pytest.fixture(scope='session')
def l123_output():

    return example + 'bad_files/l123_output.log'
