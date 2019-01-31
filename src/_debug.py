from GaussianManager.src import toolbox, manager, utils, exceptions

def main():

    path = '/home/riley/dev/python/GaussianManager/tests/example/l301_tsopt_output.log'
    lines = utils.read_file_lines(path)
    utils.parse_output_lines_for_coordinates(lines)


if __name__ == "__main__":
    main()