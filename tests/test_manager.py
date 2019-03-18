from src import manager, utils


class TestGaussianManager:

    def test_qst3_write(self, experiment_directory, geom_directory, output_ts, qst3_calc):

        exp = experiment_directory + 'OH-chloromethane/mp2/qst3/'
        gm = manager.GaussianManager.factory(exp, geom_directory, output_ts, '-1 1', qst3_calc)
        gm.write_input()

        _ = utils.get_file_lines(gm.input_file.filepath)

        assert True
