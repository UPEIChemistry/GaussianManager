from gaussian_manager import run, calculations


def mock_gaussian(_, __):

    print("gaussian mocked!")


def test_gm_module(monkeypatch, molecule, experiment_directory):

    calcs = [calculations.TsoptCalc('mp2', 'cc-PVDZ', goal='ts', convergence='loose', grid='fine'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='reverse'),
             calculations.GoptCalc('mp2', 'cc-PVDZ', direction='reverse', convergence='loose', grid='fine'),
             calculations.IrcCalc('mp2', 'cc-PVDZ', direction='forward'),
             calculations.GoptCalc('mp2', 'cc-PVDZ', direction='forward', convergence='loose', grid='fine')]

    with monkeypatch.context() as m:
        m.setattr('gaussian_manager.utils.run_gaussian_bash_command', mock_gaussian)
        run.run([molecule], experiment_directory, calcs, '-1 1')
