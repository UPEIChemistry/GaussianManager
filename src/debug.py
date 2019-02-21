from GaussianManager.src import calculations, gaussian_files, manager, utils
import tempfile

path = '/home/riley/dev/python/GaussianManager/tests/example/'
inp_path = tempfile.mkstemp()
out_path = path + 'l9999_tsopt_output.log'
calc = calculations.TsoptCalc('mp2', '6-31G')
mol_coords = utils.get_coords_from_obabel_xyz(path + 'xyz/F-CH3-OH.xyz')

inp = gaussian_files.InputFile(inp_path, calc, 'F-CH3-OH', mol_coords, '-1 1')
out = gaussian_files.OutputFile.factory(out_path, inp)

out.display_covergence()
