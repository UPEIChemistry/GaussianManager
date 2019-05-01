import argparse
from gaussian_manager import utils
import os


def get_args():

    parser = argparse.ArgumentParser(description='Walks down provided path and converts .xyz files to .npy files')
    parser.add_argument('path', help='root path to begin walking down')

    return parser.parse_args()


if __name__ == '__main__':

    args = get_args()

    for dirpath, dirs, filenames in os.walk(args.path):

        if 'geometries' in dirpath:

            for name in filenames:
                file = dirpath + '/' + name
                if '.xyz' in name:
                    cart, atmnum = utils.parse(file)
                    utils.export_np(os.path.splitext(file)[0] + '_cartesians.npy', cart)
                    utils.export_np(os.path.splitext(file)[0] + '_atm_nums.npy', atmnum)
