"""Module containing executive classes which overlook multiple GaussianManager instances
    (i.e. multiple gaussian calculations) for a single molecule/reaction"""

from GaussianManager.src import calculations, exceptions, manager, utils
import os
from typing import List, Union

class GaussianExecutive(object):
    """Class responsible for calling and managing multiple GM instances for single molecules

            Args:
                input_path (str): path to the xyz file containing molecule coords. IF FIRST
                    CALC IS QST3: path to a directory which holds files ending with '_ts.xyz',
                    '_reactant.xyz' & 'product.xyz'
                output_dir (str): directory where generated input/output files are to be stored
                multiplicity (str): the multiplicity for the molecule being studied
                calculation_suite (list): list of calculation objects to subject molecule to
    """

    def __init__(self,
                 input_path: str,
                 output_dir: str,
                 multiplicity: str,
                 calculation_suite: List[calculations.Calculation]):

        self.output_dir = utils.sanitize_path(output_dir, add_slash=True)
        self.geom_dir = self.output_dir + 'geometries/'
        utils.make_dir(self.output_dir)

        if os.path.isfile(input_path):
            self.input_path = utils.copy_file(input_path,
                                                 self.geom_dir
                                                 + utils.get_file_name(input_path))
        elif os.path.isdir(input_path):
            for p in [utils.sanitize_path(path, add_slash=True) + file for path, _, file in os.walk(input_path)]:
                utils.copy_file(p, self.geom_dir)

        self.multiplicity = multiplicity
        self.calculation_suite = calculation_suite

        self.error_log = self.output_dir + 'error_log.txt'

    def run_calculation_suite(self):
        """runs the full set of calculations on the input molecule by creating GM instances based
            on which type of calcs are provided

            Raises:
                exceptions.GaussianExecutiveError: raised if GE encounters unresolvable errors thrown
                    by gaussian. Error message contains gaussian specific code/message and the name of
                    the calc responsible for the error
        """

        for calculation in self.calculation_suite:

            gm_dir = self.output_dir + '{}/{}/'.format(calculation.method, calculation.name)
            gm = manager.GaussianManager.factory(gm_dir,
                                                 self.input_path,
                                                 self.input_path,
                                                 self.multiplicity,
                                                 calculation)

            try:
                gm.run_manager()
            except exceptions.GaussianManagerError as error:
                message = 'encountered code ({}) with {}'.format(error.args[0], calculation.name)
                utils.log_error(self.error_log, message)
                raise exceptions.GaussianExecutiveError(message)
