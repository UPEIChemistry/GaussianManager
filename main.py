import gaussian_manager

def main():
    exp_path = '~/gaussian/experiments/test/'
    xyz_path = '~/gaussian/raw_xyz_files/test/'

    manager = gaussian_manager.GaussianManager(exp_path, xyz_path, ['mp2'], ['6-31G'])
    manager.get_all_geometries()

if __name__ == "__main__":
    main()
