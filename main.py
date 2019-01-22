import gaussian_manager

def main():
    exp_path = '~/gaussian/experiments/run_2/'
    xyz_path = '~/gaussian/raw_xyz_files/run_2/'

    manager = gaussian_manager.GaussianManager(xyz_path, exp_path, ['mp2'], ['6-31G'])
    manager.get_all_geometries()

if __name__ == "__main__":
    main()
