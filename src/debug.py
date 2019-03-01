"""Debug script for hooking into GM for extensive testing"""

from GaussianManager import generate_dataset
from GaussianManager.src import calculations, files, manager, utils
import tempfile

generate_dataset.main('/home/riley/dev/python/GaussianManager/tests/example/xyz',
                      '/home/riley/dev/python/GaussianManager/tests/example/exp',
                      '-1 1')