import argparse
import numpy as np
import os
import shutil
import re
from typing import List


def get_args():

    parser = argparse.ArgumentParser(description='Compile batch geometries into single data directory,')
    parser.add_argument('--root',
                        default='/home/riley/gaussian/mp2',
                        help='Root dir where exp batches are located')
    parser.add_argument('--dest',
                        default='/home/riley/gaussian/mp2/arrays',
                        help='Where to place final arrays')

    return parser.parse_args()


def run():

    args = get_args()
    main(args.root, args.dest)


def main(src, dest):

    array_files = []
    for i, (dirname, dirs, files) in enumerate(os.walk(dest)):

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

    np.save(dest + '/mp2_reactant_cartesians.npy', r)
    np.save(dest + '/mp2_product_cartesians.npy', p)
    np.save(dest + '/mp2_ts_cartesians.npy', ts)
    np.save(dest + '/mp2_atm_nums.npy', z)


def make_data_dir(src, dest):
    for dirname, dirs, filenames in os.walk(src):

        match = re.search(r'\bbatch\d+\b', dirname)
        if match:

            for d in dirs:
                dname = dirname + '/' + d
                if 'geometries' in dname and 'failed' not in dname:
                    molname = os.path.basename(dirname)
                    try:
                        shutil.copytree(dname, os.path.join(dest, molname), symlinks=True)
                    except FileExistsError:
                        print('{} already copied over, skipping...'.format(molname))
                        continue


def add_dummy_atoms(arrays: List, m: int):

    x = [np.pad(a, ((0, m - a.shape[0]), (0, 0)), 'constant', constant_values=np.nan) for a in arrays]

    return x


def add_dummy_atoms_z(arrays: List, m: int):

    x = [np.pad(a, (0, m - a.shape[0]), 'constant', constant_values=0) for a in arrays]

    return x


def compile_arrays(arrays: List) -> np.ndarray:

    x = [np.expand_dims(a, axis=0) for a in arrays]

    return np.concatenate(x, axis=0)


if __name__ == '__main__':
    run()
