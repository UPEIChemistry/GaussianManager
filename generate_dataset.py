from GaussianManager.src import executive
import os

mol_list = [mol for mol in os.listdir('~/gaussian/raw_xyz_files/sn2_dataset/')]
root_dir = '~/gaussian/experiments/sn2_dataset'
calc_list = ['tsopt', 'irc']
method = 'mp2'
basis_set = '6-31G'

ex = executive.GaussianExecutive(mol_list, root_dir, calc_list, method, basis_set)
ex.generate_dataset()