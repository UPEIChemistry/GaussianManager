from GaussianManager.src import executive, utils
import os

xyz_path = '~/gaussian/raw_xyz_files/sn2_dataset/'
mol_list = [xyz_path + mol for mol in os.listdir(utils.sanitize_path(xyz_path))]
root_dir = utils.sanitize_path('~/gaussian/experiments/sn2_dataset', add_slash=True)
calc_list = ['tsopt', 'irc']
method = 'mp2'
basis_set = '6-31G'

ex = executive.GaussianExecutive(mol_list, root_dir, calc_list, method, basis_set)
ex.generate_dataset()