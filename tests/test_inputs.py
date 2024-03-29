from ..gaussian_manager import inputs, utils


class TestInputFile:

    def test_input_write(self, blank_file, ts_calc, molecule):

        n = utils.get_file_name(molecule)
        c = utils.get_coords_from_obabel_xyz(molecule)

        i = inputs.InputFile.factory(blank_file, ts_calc, n, c, '-1 1')
        i.write()
        lines = utils.get_file_lines(blank_file)

        assert ('mp2/cc-PVDZ '
                + 'opt(ts, calcfc, noeigen, tight, maxsteps=10, maxcycles=10) '
                + 'integral(grid=superfine) scf(maxcyc=256) freq') in lines[1]

        assert '\n' in lines[-1]

    def test_qst3_input_write(self, blank_file, qst3_calc, molecule):

        n = utils.get_file_name(molecule)
        c = [utils.get_coords_from_obabel_xyz(molecule),
             utils.get_coords_from_obabel_xyz(molecule),
             utils.get_coords_from_obabel_xyz(molecule)]

        i = inputs.InputFile.factory(blank_file, qst3_calc, n, c, '-1 1')
        i.write()
        _ = utils.get_file_lines(blank_file)

        assert True
