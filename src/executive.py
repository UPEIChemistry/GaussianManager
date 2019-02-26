"""Module containing executive classes which overlook multiple GaussianManager instances
    (i.e. multiple gaussian calculations) for a single molecule/reaction"""

from GaussianManager.src import calculations, exceptions, manager, utils

class GaussianExecutive(object):
    """Class responsible for calling and managing multiple GM instances for single molecules

            Args:
                expirement_directory (str): directory where generated input/output files are to be stored
                input_mol_filepath (str): path to the xyz file containing molecule coords
                multiplicity (str): the multiplicity for the molecule being studied
                calculation_suite (list): list of calculation objects to subject molecule to
        """

    def __init__(self,
                 expirement_directory,
                 input_mol_filepath,
                 multiplicity,
                 calculation_suite):

        self.input_mol_filepath = utils.sanitize_path(input_mol_filepath)
        self.expirement_directory = utils.sanitize_path(expirement_directory, add_slash=True)
        utils.make_dir(self.expirement_directory)
        self.multiplicity = multiplicity
        self.calculation_suite = calculation_suite

        self.output_mol_filepaths = []

    def run_calculation_suite(self):
        """runs the full set of calculations on the input molecule by creating GM instances based
            on which type of calcs are provided

            Raises:
                exceptions.GaussianExecutiveError: raised if GE encounters unresolvable errors thrown
                    by gaussian. Error message contains gaussian specific code/message and the name of
                    the calc responsible for the error
        """


        molecule = self.input_mol_filepath
        for calculation in self.calculation_suite:

            gm_dir = self.expirement_directory + '{}/{}/'.format(calculation.method, calculation.name)
            gm = manager.GaussianManager.factory(gm_dir,
                                                 molecule,
                                                 self.multiplicity,
                                                 calculation)

            try:
                gm.run_manager()
            except exceptions.GaussianManagerError as error:
                message = 'encountered code ({}) with {}'.format(error.args[0], calculation.name)
                raise exceptions.GaussianExecutiveError(message)
            else:
                self.output_mol_filepaths.append(gm.output_mol_filepath)
                if gm.input_file.calculation.name == calculations.TsoptCalc.__name__:
                    molecule = gm.output_file.obabel_path
