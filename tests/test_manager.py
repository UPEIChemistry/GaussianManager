from GaussianManager.src import calculations, exceptions, manager, utils
import pytest
import tempfile

class TestGM:

    def test_raise_error(self, gaussian_manager):

        with pytest.raises(exceptions.GaussianManagerError) as e:
            gaussian_manager.raise_error('foobar')
            assert e.args[0] == 'foobar'

    def test_write_output_successful(self, monkeypatch, gaussian_manager):

        def mock_successful_output(inp, out):

            print('bash command mocked!')

        with monkeypatch.context() as m:
            m.setattr('GaussianManager.src.utils.run_gaussian_bash_command',
                      mock_successful_output)
            gaussian_manager.write_output()