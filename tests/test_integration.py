import gaussian_manager
from src import calculations


def mock_gaussian(inp, out):

    print("gaussian mocked!")


def test_gm_module(monkeypatch, molecule, experiment_directory):

    calcs = [calculations.TsoptCalc('mp2', 'cc-PVDZ', goal='ts'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='reverse'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='forward')]

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        gaussian_manager.run([molecule], experiment_directory, calcs, '-1 1')
