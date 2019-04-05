from gaussian_manager import calculations
import pytest
import tempfile

example = '/home/riley/gaussian/experiments/gm_testing/'
exp_dir = example + 'exp/OH-chloromethane/mp2/'

ts_dir = exp_dir + 'ts/'
irc_r_dir = exp_dir + 'irc_reverse/'
irc_f_dir = exp_dir + 'irc_forward/'
qst3_dir = exp_dir + 'qst3/'


@pytest.fixture(scope='session')
def experiment_directory():

    return example + 'exp/'


@pytest.fixture(scope='session')
def geom_directory():

    return example + 'exp/OH-chloromethane/geometries'


@pytest.fixture(scope='session')
def blank_file():

    return tempfile.mkstemp()[-1]


@pytest.fixture(scope='session')
def molecule():

    return example + 'xyz/OH-chloromethane.xyz'


@pytest.fixture(scope='session')
def output_ts():

    return exp_dir + 'geometries/OH-chloromethane_ts.xyz'


@pytest.fixture(scope='session')
def output_reactant():

    return exp_dir + 'geometries/OH-chloromethane_reactant.xyz'


@pytest.fixture(scope='session')
def output_product():

    return exp_dir + 'geometries/OH-chloromethane_product.xyz'


@pytest.fixture(scope='session')
def ts_calc():

    return calculations.TsoptCalc('mp2', 'cc-PVDZ')


@pytest.fixture(scope='session')
def qst3_calc():

    return calculations.TsoptCalc('mp2', 'cc-PVDZ', goal='qst3')


@pytest.fixture(scope='session')
def irc_r_calc():

    return calculations.IrcCalc('mp2', 'cc-PVDZ')


@pytest.fixture(scope='session')
def irc_f_calc():

    return calculations.IrcCalc('mp2', 'cc-PVDZ', direction='forward')


@pytest.fixture(scope='session')
def ts_input_path():

    return ts_dir + 'input.com'


@pytest.fixture(scope='session')
def ts_output_path():

    return ts_dir + 'output.log'


@pytest.fixture(scope='session')
def l123_output():

    return example + 'bad_files/l123_output.log'
