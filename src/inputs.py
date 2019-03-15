from src import calculations
from typing import List, Union, Type, TypeVar

T = TypeVar('T', bound='InputFile')


class InputFile(object):

    def __init__(self,
                 filepath: str,
                 calculation: calculations.Calculation,
                 molecule_name: str,
                 mol_coords: List[str],
                 multiplicity: str):
        """
        Wrapper which represents a gaussian input file, allowing for better customization of
        contained mol coords & calc kws

        :param filepath: path to the gaussian input file
        :param calculation: The calc to be run by gaussian
        :param molecule_name: the name of the molecule
        :param mol_coords: List of lines containing xyz coords for mol, should end with a
        :param multiplicity: multiplicity of the provided molecule
        """
        self.filepath = filepath
        self.calculation = calculation
        self.molecule_name = molecule_name
        self.mol_coords = mol_coords
        self.multiplicity = multiplicity

    @staticmethod
    def factory(filepath: str,
                calculation: calculations.Calculation,
                molecule_name: str,
                mol_coords: Union[List[str], List[List]],
                multiplicity: str) -> Type[T]:
        """
        Static factory method which returns the proper input file based on provided calc

        :param filepath: path to the gaussian input file
        :param calculation: The calc to be run by gaussian
        :param molecule_name: the name of the molecule
        :param mol_coords: List of lines containing xyz coords for mol, should end with a newline character.
            IF CALC IS QST3: List of list of lines containing xyz coords for reactant, product, and ts IN THAT ORDER.
            Lines should end with a newline character.
        :param multiplicity: multiplicity of the provided molecule

        :return: OutputFile object
        """

        if calculation.name == 'qst3':
            inp = QST3InputFile(filepath, calculation, molecule_name, mol_coords, multiplicity)

        elif calculation.name == 'qst2':
            inp = QST2InputFile(filepath, calculation, molecule_name, mol_coords, multiplicity)

        else:
            inp = InputFile(filepath, calculation, molecule_name, mol_coords, multiplicity)

        return inp

    def write(self):
        """Write the input file in the proper gaussian format"""

        # Write file lines according to gaussian requirements
        with open(self.filepath, 'w') as file:
            file.write(self.calculation.get_calc_line() + '\n\n')
            file.write(self.molecule_name + '\n\n')
            file.write(self.multiplicity + '\n')
            file.write(''.join(line for line in self.mol_coords))
            file.write('\n\n')


class QST3InputFile(InputFile):
    """
    Wrapper which represents a gaussian input file, allowing for better customization of
    contained mol coords & calc kws
    """

    def write(self):
        """Write the QST3 input file in the proper gaussian format"""

        # Write lines according to qst3 requirements for gaussian
        with open(self.filepath, 'w') as file:
            file.write(self.calculation.get_calc_line() + '\n\n')

            # Mol coords have to specified r -> p -> ts, otherwise gaussian will complain
            for coords, name in zip(self.mol_coords, ('reactant', 'product', 'ts')):
                file.write(self.molecule_name + ' {}\n\n'.format(name))
                file.write(self.multiplicity + '\n')
                file.write(''.join(line for line in coords))
                file.write('\n')

            file.write('\n')


class QST2InputFile(QST3InputFile):
    """
    Wrapper which represents a gaussian input file, allowing for better customization of
    contained mol coords & calc kws
    """
