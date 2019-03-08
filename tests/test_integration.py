from GaussianManager import gaussian_manager
from GaussianManager.src import calculations, utils
import pytest
import subprocess
import tempfile

def mock_gaussian(inp, out):

    print("gaussian mocked!")

def test_gm_module(monkeypatch, molecule):

    mols = [molecule]
    out = tempfile.mkdtemp()
    calcs = [calculations.TsoptCalc('mp2', 'cc-PVDZ', goal='ts'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='reverse'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='forward')]

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        gaussian_manager.run(mols, out, calcs, '-1 1')

def test_gm_script(monkeypatch, molecule):

    out = tempfile.mkdtemp()

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        subprocess.run(('python ~/dev/python/GaussianManager/gaussian_manager.py '
                        + '-i {}, -o {}, -c tsopt, irc_rev, irc_fwd').format(molecule, out),
                       shell=True,
                       check=True)
