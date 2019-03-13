from GaussianManager.src import files, exceptions, utils

class TestInputFile:

    def test_input_write(self, blank_file, ts_calc, molecule):

        n = utils.get_file_name(molecule)
        c = utils.get_coords_from_obabel_xyz(molecule)

        i = files.InputFile.factory(blank_file, ts_calc, n, c, '-1 1')
        i.write()
        l = utils.get_file_lines(blank_file)

        assert ('mp2/6-31G '
                + 'opt(ts, calcfc, noeigen, tight) '
                + 'integral(grid=superfine) scf(maxcyc=256) freq') in l[0]

        assert '\n' in l[-1]

    def test_qst3_input_write(self, blank_file, qst3_calc, molecule):

        n = utils.get_file_name(molecule)
        c = [utils.get_coords_from_obabel_xyz(molecule),
             utils.get_coords_from_obabel_xyz(molecule),
             utils.get_coords_from_obabel_xyz(molecule)]

        i = files.InputFile.factory(blank_file, qst3_calc, n, c, '-1 1')
        i.write()
        l = utils.get_file_lines(blank_file)

        assert True
