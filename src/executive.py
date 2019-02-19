"""Module containing executive classes which overlook multiple GaussianManager instances
    (i.e. multiple gaussian calculations) for a single molecule/reaction"""

from GaussianManager.src import calculations, manager, utils

class GaussianExecutive(object):

    def __init__(self,
                 expirement_directory,
                 molecule_filepath,
                 multiplicity,
                 calculation_suite):

        self.molecule_filepath = utils.sanitize_path(molecule_filepath)
        self.expirement_directory = utils.sanitize_path(expirement_directory, add_slash=True)
        utils.make_dir(self.expirement_directory)
        self.multiplicity = multiplicity
        self.calculation_suite = calculation_suite

    def run_calculation_suite(self):

        for calculation in self.calculation_suite:

            gm_dir = self.expirement_directory + '{}/'.format(calculation)
            gm = manager.GaussianManager.factory(gm_dir,
                                                 self.molecule_filepath,
                                                 self.multiplicity,
                                                 calculation)
