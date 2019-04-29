"""Module for compiling molecule .npy files into full dataset .npy files"""

from gaussian_manager import utils
import numpy as np
import os
from typing import List


def add_dummy_atoms(arrays: List, m: int):

    x = [np.pad(a, ((0, m - a.shape[0]), (0, 0)), 'constant', constant_values=np.nan) for a in arrays]

    return x


def add_dummy_atoms_z(arrays: List, m: int):

    x = [np.pad(a, (0, m - a.shape[0]), 'constant', constant_values=0) for a in arrays]

    return x


def compile_arrays(arrays: List) -> np.ndarray:

    x = [np.expand_dims(a, axis=0) for a in arrays]

    return np.concatenate(x, axis=0)


def main():

    array_files = []
    for i, (dirname, dirs, files) in enumerate(os.walk('/home/riley/gaussian/experiments/batches/data')):

        # Skip the first tuple
        if not i:
            continue

        for file in files:
            array_files.append(dirname + '/' + file)

    # Ensure files are sorted lexicographically for dataset
    array_files.sort()

    r = [np.load(f) for f in array_files if '_reactant_cartesians' in f]
    p = [np.load(f) for f in array_files if '_product_cartesians' in f]
    ts = [np.load(f) for f in array_files if '_ts_cartesians' in f]
    z = [np.load(f) for f in array_files if 'reactant_atm_nums' in f]

    # max_atomic_num = max(mol.max() for mol in z)
    max_atoms = max(mol.shape[0] for mol in r)

    r = compile_arrays(add_dummy_atoms(r, max_atoms))
    p = compile_arrays(add_dummy_atoms(p, max_atoms))
    ts = compile_arrays(add_dummy_atoms(ts, max_atoms))
    z = compile_arrays(add_dummy_atoms_z(z, max_atoms))

    utils.export_np('/home/riley/gaussian/experiments/batches/mp2_reactant_cartesians.npy', r)
    utils.export_np('/home/riley/gaussian/experiments/batches/mp2_product_cartesians.npy', p)
    utils.export_np('/home/riley/gaussian/experiments/batches/mp2_ts_cartesians.npy', ts)
    utils.export_np('/home/riley/gaussian/experiments/batches/mp2_atm_nums.npy', z)


if __name__ == '__main__':
    main()