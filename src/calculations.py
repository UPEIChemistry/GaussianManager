"""Module containing Calculation class and subclasses required for GM. A single Calculation object
    serves the config line which is the main interface between user and gaussian"""

'# method/basis_set opt(ts, calcfc, noeigen, tight) integral(grid=superfine) scf(maxcyc=256) freq'
'# method/basis_set irc(direction, calcfc, maxpoints=64, stepsize=1, tight) integral(grid=superfine) scf(maxcyc=256) freq'

class Calculation(object):
    """Super class for calc classes, should only be instantiated if a full calc_line is
            provided

            Args:
                method (str): level of theory for calc
                basis_set (str): basis set for calc
                calc_line (str): collection of calc kws properly formatted for gaussian
    """

    def __init__(self,
                method: str,
                basis_set: str,
                calc_line: str):

        self.method = method
        self.basis_set = basis_set
        self.calc_line = calc_line

        self.name = 'calc'

    def get_calc_line(self) -> str:
        """Generates the string required for the config line for gaussian"""

        #Standard required calculation line required for gaussian
        string = '# {}/{} {}'.format(self.method,
                                     self.basis_set,
                                     self.calc_line)

        return string

class TsoptCalc(Calculation):
    """Calc for tsopt calculations with exposed commonly customizable calc kws

            Args:
                method (str): level of theory
                basis_set (str): basis set for calc
                goal (str, optional): Defaults to 'ts'. Which search algorithm to use, can either
                    be {ts} or {qst3}
                convergence (str, optional): Defaults to 'tight'. dictates restrictiveness of convergence
                    metrics. Options include {tight} and {verytight}
                grid (str, optional): Defaults to 'superfine'. dictates fineness of integral grid for
                    DFT methods. Optionsl include {finegrid}, {superfine} and {ultrafine}
                maxcyc (int, optional): Defaults to 256. how many cycles scf calc should use when finding
                    the energy of a stationary point
    """

    def __init__(self,
                 method: str,
                 basis_set: str,
                 goal: str='ts',
                 convergence: str='tight',
                 grid: str='superfine',
                 maxcyc: int=256):

        #Line specific to ts-opt calcs
        calc_line = ('opt({goal}, calcfc, noeigen, {conv}) '
                     + 'integral(grid={grid}) scf(maxcyc={cyc}) freq').format(goal=goal,
                                                                              conv=convergence,
                                                                              grid=grid,
                                                                              cyc=maxcyc)

        super().__init__(method,
                         basis_set,
                         calc_line)
        self.name = goal

class GoptCalc(Calculation):
    """Calc for tsopt calculations with exposed commonly customizable calc kws

        Args:
            method (str): level of theory
            basis_set (str): basis set for calc
            direction (str, optional): Defaults to 'reverse'. Choose {reverse} for reactants
                and {forward} for products
            convergence (str, optional): Defaults to 'tight'. dictates restrictiveness of convergence
                metrics. Options include {tight} and {verytight}
            grid (str, optional): Defaults to 'superfine'. dictates fineness of integral grid for
                DFT methods. Optionsl include {finegrid}, {superfine} and {ultrafine}
            maxcyc (int, optional): Defaults to 256. how many cycles scf calc should use when finding
                the energy of a stationary point
    """

    def __init__(self,
                 method: str,
                 basis_set: str,
                 direction: str='reverse',
                 convergence: str='tight',
                 grid: str='superfine',
                 maxcyc: int=256):

        #Line specific to ts-opt calcs
        calc_line = ('opt({conv}) '
                     + 'integral(grid={grid}) scf(maxcyc={cyc})').format(conv=convergence,
                                                                         grid=grid,
                                                                         cyc=maxcyc)

        super().__init__(method,
                         basis_set,
                         calc_line)
        self.name = 'gopt_{}'.format(direction)

class IrcCalc(Calculation):
    """Calc for irc calculations with exposed commonly customizable calc kws

            Args:
                method (str): level of theory
                basis_set (str): basis set for calc
                direction (str, optional): Defaults to 'reverse'. Choose {reverse} for reactants
                    and {forward} for products
                convergence (str, optional): Defaults to 'tight'. dictates restrictiveness of convergence
                    metrics. Options include {tight} and {verytight}
                grid (str, optional): Defaults to 'superfine'. dictates fineness of integral grid for
                    DFT methods. Optionsl include {finegrid}, {superfine} and {ultrafine}
                maxcyc (int, optional): Defaults to 256. how many cycles scf calc should use when finding
                    the energy of a stationary point
                max_points (int, optional): Defaults to 64. The num of steps to take when searching
                    for stationary points
                step_size (float, optional): Defaults to 1. The size of each step to take on the
                    PES in units of 0.01 Bohr. If < 1, step is in units of 0.01 amu^(1/2) Bohr
    """

    def __init__(self,
                 method: str,
                 basis_set: str,
                 direction: str='reverse',
                 convergence: str='tight',
                 grid: str='superfine',
                 maxcyc: int=256,
                 max_points: int=2,
                 step_size: int=10):

        #line specific to irc calcs
        calc_line = ('irc({dir}, calcfc, maxpoints={pts}, stepsize={step}, {conv}) '
                     + 'integral(grid={grid}) scf(maxcyc={cyc})').format(dir=direction,
                                                                        pts=max_points,
                                                                        step=step_size,
                                                                        conv=convergence,
                                                                        grid=grid,
                                                                        cyc=maxcyc)

        super().__init__(method,
                         basis_set,
                         calc_line)

        self.name = 'irc_' + direction
