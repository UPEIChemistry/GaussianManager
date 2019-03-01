"""Debug script for hooking into GM for extensive testing"""

from GaussianManager.src import calculations, files, manager, utils
import tempfile

path = '/home/riley/dev/python/GaussianManager/tests/example/OH-chloroform.xyz'
c = utils.insert_suffix(path, '_ts')
f = 'foo'