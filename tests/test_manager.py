from GaussianManager.src import manager, utils, exceptions
import os
import pytest
import subprocess
import tempfile

class TestGaussianManager:

    def mock_successful_gaussian_job(self, inp, out):

            print('gaussian job mocked!')

    def mock_failed_gaussian_job(self, inp, out):

            raise subprocess.CalledProcessError(1, 'foo')

class TestManagerHiddenMethods(TestGaussianManager):

    def test_write_gm_input_file(self, instantiate_gm):

        true_first = '# mp2/6-31G OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
        true_last = '\n'

        gm = instantiate_gm
        gm._write_gm_input_file()

        lines = utils.read_file_lines(gm.input_filepath)
        assert true_first in lines[0] and true_last == lines[-1]

    def test_run_gm_calculation_successful(self,
                                           monkeypatch,
                                           instantiate_gm,
                                           successful_tsopt_output_filepath):

        true_first = 'Entering Gaussian System'
        true_last = 'Normal termination of Gaussian'

        gm = instantiate_gm
        with monkeypatch.context() as m:
            m.setattr('GaussianManager.src.utils.run_gaussian_bash_command',
                      self.mock_successful_gaussian_job)
            gm.output_filepath = successful_tsopt_output_filepath
            gm._run_gm_calculation()

        lines = utils.read_file_lines(gm.output_filepath)
        assert true_first in lines[0] and true_last in lines[-1]

    def test_run_gm_calculation_complete_failure(self,
                                                 monkeypatch,
                                                 instantiate_gm,
                                                 l101_tsopt_input_filepath,
                                                 l101_tsopt_output_filepath):



        gm = instantiate_gm
        with monkeypatch.context() as m:
            m.setattr('GaussianManager.src.utils.run_gaussian_bash_command',
                      self.mock_failed_gaussian_job)
            gm.input_filepath = l101_tsopt_input_filepath
            gm.output_filepath = l101_tsopt_output_filepath
            with pytest.raises(exceptions.GaussianManagerError) as error:
                gm._run_gm_calculation()
                assert 'l101' in error.args

    def test_write_gm_output_geometries_tsopt(self,
                                              instantiate_gm,
                                              successful_tsopt_output_filepath):

        true_first = '7'
        true_last = '\n'

        gm = instantiate_gm
        gm.output_filepath = successful_tsopt_output_filepath
        gm.calculation = 'tsopt'
        gm._write_gm_output_geometries()

        lines = utils.read_file_lines(gm.ts_xyz_filepath)
        assert true_first in lines [0] and true_last in lines [-1]

    def test_write_gm_output_geometries_irc(self,
                                            instantiate_gm,
                                            successful_irc_output_filepath):

        true_first = '9'
        true_last = '\n'

        gm = instantiate_gm
        gm.output_filepath = successful_irc_output_filepath
        gm.calculation = 'irc'
        gm._write_gm_output_geometries()

        reactant_lines = utils.read_file_lines(gm.reactant_xyz_filepath)
        product_lines = utils.read_file_lines(gm.product_xyz_filepath)
        assert true_first in reactant_lines[0] and true_last in reactant_lines[-1]
        assert true_first in product_lines[0] and true_last in product_lines[-1]

class TestManagerExposedMethods(TestGaussianManager):

    def test_run_gaussian_manager(self, monkeypatch, molecule_filepath, successful_tsopt_output_filepath):

        exp_dir = tempfile.mkdtemp()
        with monkeypatch.context() as m:
            m.setattr('GaussianManager.src.utils.run_gaussian_bash_command',
                      self.mock_successful_gaussian_job)
            gm = manager.GaussianManager(molecule_filepath, exp_dir)
            gm.output_filepath = successful_tsopt_output_filepath
            gm.run_gaussian_manager()
