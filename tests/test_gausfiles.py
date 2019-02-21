from GaussianManager.src import gaussian_files, utils, exceptions
import os

class TestInputFile:

    def test_write_inputfile(self, input_file):

        inp = input_file.calculation
        true_first = '# {}/{} {}, {}, MAXPOINTS={}, STEPSIZE={}) {}'.format(inp.method,
                                                                            inp.basis_set,
                                                                            inp.calc_kws,
                                                                            inp.converge_threshold,
                                                                            inp.max_points,
                                                                            inp.step_size,
                                                                            inp.extra_kws)
        true_last = '\n'
        input_file.write()

        lines = utils.get_file_lines(input_file.filepath)
        assert true_first in lines[0] and true_last in lines[-1]

class TestOutputFile:

    def test_write_obabel_output(self, input_file, successful_tsopt_output_filepath):

        out = gaussian_files.OutputFile.factory(successful_tsopt_output_filepath, input_file)
        out.parse_xyz()
        out.write_obabel_xyz()

        lines = utils.get_file_lines(out.obabel_path)
        assert '7' in lines[0] and '\n' in lines[-1]
        os.remove(out.obabel_path)

    def test_display_covergence(self):

        pass