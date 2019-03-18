import gaussian_manager


def mock_gaussian(_, __):

    print('gaussian mocked!')


class TestGM:

    def test_run(self, monkeypatch, molecule, experiment_directory):

        calcs = gaussian_manager._get_default_calcs('half')
        with monkeypatch.context() as m:
            m.setattr('src.utils.run_gaussian_bash_command', mock_gaussian)
            gaussian_manager.run([molecule], experiment_directory, calcs, '-1 1')
