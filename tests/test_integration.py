from GaussianManager import generate_dataset
import pytest
import tempfile

def mock_gaussian(inp, out):

    print("gaussian mocked!")

def test_executive_single(monkeypatch):

    with monkeypatch.context() as m:
        m.setattr('GaussianManager.src.utils.run_gaussian_bash_command', mock_gaussian)
        generate_dataset.main('/home/riley/dev/python/GaussianManager/tests/example/xyz',
                              '/home/riley/dev/python/GaussianManager/tests/example/exp',
                              '-1 1',
                              scope='single')
