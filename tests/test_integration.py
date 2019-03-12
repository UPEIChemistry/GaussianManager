from GaussianManager import gaussian_manager
from GaussianManager.src import calculations, utils
import os
import pytest
import subprocess
import tempfile

def mock_gaussian(inp, out):

    print("gaussian mocked!")

def test_gm_module(monkeypatch, molecule, experiment_directory):

    calcs = [calculations.TsoptCalc('mp2', 'cc-PVDZ', goal='ts'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='reverse'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='forward')]

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        gaussian_manager.run([molecule], experiment_directory, calcs, '-1 1')

def test_gm_script_default_single(monkeypatch, molecule, experiment_directory):

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        subprocess.run(('python ~/dev/python/GaussianManager/gaussian_manager.py '
                        + '-i {} -o {}').format(molecule, experiment_directory),
                       shell=True,
                       check=True)

def test_gm_script_kw_half(monkeypatch, molecule, experiment_directory):

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        subprocess.run(('python ~/dev/python/GaussianManager/gaussian_manager.py '
                        + '-i {} -o {} -c half').format(molecule, experiment_directory),
                       shell=True,
                       check=True)

# def test_gm_script_full(monkeypatch, molecule, experiment_directory):

#     _, out = get_params()

#     with monkeypatch.context() as m:
#         m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
#         subprocess.run(('python ~/dev/python/GaussianManager/gaussian_manager.py '
#                         + '-i {} -o {} -c full').format(molecule, out),
#                        shell=True,
#                        check=True)

def test_gm_script_override_calc_kw(monkeypatch, molecule, experiment_directory):

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        subprocess.run(('python ~/dev/python/GaussianManager/gaussian_manager.py '
                        + '-i {} -o {} -c tsopt, irc_rev, irc_fwd').format(molecule, experiment_directory),
                       shell=True,
                       check=True)