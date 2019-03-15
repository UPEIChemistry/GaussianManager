from src import utils
import os
import pytest
import subprocess


def test_run_bash_command_throw_error():

    with pytest.raises(subprocess.CalledProcessError):
        utils.run_gaussian_bash_command('input_path', 'output_path')


def test_discover_error_code(l123_output):

    c = utils.discover_gaussian_error_code(l123_output)
    assert c == 'l123'


def test_get_obabel_coords(molecule):

    c = utils.get_coords_from_obabel_xyz(molecule)
    assert '-1.657852' in c[0] and '3.017143' in c[-1]


def test_get_coords(ts_output_path):

    c = utils.get_coords(ts_output_path)
    assert '-1.594915   -0.172227   -0.052327' in c[0]
    assert '2.757059   -0.878419    0.094712' in c[-1]


def test_get_freqs(ts_output_path):

    f = utils.get_freqs(ts_output_path)
    assert 1 == f[0] and -257.5473 == f[1] and 3714.8817 == f[-1]


def test_get_converge(ts_output_path):

    c = utils.get_tsopt_converge_metrics(ts_output_path)
    assert 0.006806 == c[0][0]
    assert 0.044667 == c[0][-1]
    assert 0.000000 == c[-1][0]
    assert 0.000013 == c[-1][-1]


def test_get_name(molecule):

    n = utils.get_file_name(molecule)
    assert n == 'OH-chloromethane'


def test_insert_suffix(molecule):

    n = utils.insert_suffix(molecule, '_ts')
    assert os.path.basename(n) == 'OH-chloromethane_ts.xyz'
