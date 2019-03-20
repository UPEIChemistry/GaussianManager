"""Module containing Calculation class and subclasses required for GM. A single Calculation object
    serves the config line which is the main interface between user and gaussian"""

'# method/basis opt(ts, calcfc, noeigen, tight) integral(grid=superfine) scf(maxcyc=256) freq'
'# method/basis irc(direction, calcfc, maxpoints=5, stepsize=10, tight) integral(grid=superfine) scf(maxcyc=256) freq'


class Calculation(object):

    def __init__(self,
                 method: str,
                 basis_set: str,
                 calc_line: str):
        """
        Super class for calc classes, should only be instantiated if a full calc_line is
            provided

        :param method: level of theory for calc
        :param basis_set: basis set for calc
        :param calc_line: collection of calc kws properly formatted for gaussian
        """

        self.method = method
        self.basis_set = basis_set
        self.calc_line = calc_line

        self.name = 'calc'

    def get_calc_line(self) -> str:
        """Generates the string required for the config line for gaussian"""

        # Standard required calculation line required for gaussian
        string = '# {}/{} {}'.format(self.method,
                                     self.basis_set,
                                     self.calc_line)

        return string


class TsoptCalc(Calculation):

    """

            Args:
                method (str):
                basis_set (str):
                goal (str, optional): Defaults to 'ts'. Which search algorithm to use, can either
                    be {ts} or {qst3}
                convergence (str, optional): Defaults to 'tight'. dictates restrictiveness of convergence
                    metrics. Options include {tight} and {verytight}
                grid (str, optional): Defaults to 'superfine'. dictates fineness of integral grid for
                    DFT methods. Options include {finegrid}, {superfine} and {ultrafine}
                maxcyc (int, optional): Defaults to 256. how many cycles scf calc should use when finding
                    the energy of a stationary point
    """

    def __init__(self,
                 method: str,
                 basis_set: str,
                 goal: str = 'ts',
                 convergence: str = 'tight',
                 grid: str = 'superfine',
                 max_step_size: int = 50,
                 num_steps: int = 500,
                 maxcyc: int = 256):
        """
        Calc for tsopt calculations with exposed commonly customizable calc kws

        :param method: level of theory
        :param basis_set: basis set for calc
        :param goal: Defaults to 'ts'. Which search algorithm to use, can either be {ts} or {qst3}
        :param convergence: Defaults to 'tight'. dictates restrictiveness of convergence metrics.
            Options include {tight} and {verytight}
        :param grid: Defaults to 'superfine'. dictates fineness of integral grid for DFT methods.
            Options include {finegrid}, {superfine} and {ultrafine}
        :param maxcyc: Defaults to 256. how many cycles scf calc should use when finding the
            energy of a stationary point
        """

        self.method = method
        self.basis_set = basis_set
        self.goal = goal
        self.convergence = convergence
        self.grid = grid
        self.max_step_size = max_step_size
        self.num_steps = num_steps
        self.maxcyc = maxcyc

        # Line specific to ts-opt calcs
        calc_line = ('opt({goal}, calcfc, cartesian, noeigen, {conv}, maxstep={msteps}, maxcycles={nsteps}) '
                     + 'integral(grid={grid}) scf(maxcyc={cyc}) freq').format(goal=goal,
                                                                              conv=convergence,
                                                                              msteps=max_step_size,
                                                                              nsteps=num_steps,
                                                                              grid=grid,
                                                                              cyc=maxcyc)

        super().__init__(method, basis_set, calc_line)
        self.name = goal


class GoptCalc(Calculation):

    def __init__(self,
                 method: str,
                 basis_set: str,
                 goal='',
                 direction: str = 'reverse',
                 convergence: str = 'tight',
                 grid: str = 'superfine',
                 max_step_size: int = 50,
                 num_steps: int = 500,
                 maxcyc: int = 256):
        """
        Calc for tsopt calculations with exposed commonly customizable calc kws
        :param method: level of theory
        :param basis_set: basis set for calc
        :param direction: Defaults to 'reverse'. Choose {reverse} for reactants and {forward} for products
        :param convergence: Defaults to 'tight'. dictates restrictiveness of convergence metrics.
            Options include {tight} and {verytight}
        :param grid: Defaults to 'superfine'. dictates fineness of integral grid for DFT methods.
            Options include {finegrid}, {superfine} and {ultrafine}
        :param maxcyc: Defaults to 256. how many cycles scf calc should use when finding the
            energy of a stationary point
        """

        self.method = method
        self.basis_set = basis_set
        self.goal = goal
        self.direction = direction
        self.convergence = convergence
        self.grid = grid
        self.max_step_size = max_step_size
        self.num_steps = num_steps
        self.maxcyc = maxcyc

        # Line specific to ts-opt calcs
        calc_line = ('opt({goal} {conv}, cartesian, maxstep={ssteps}, maxcycles={nsteps}) '
                     + 'integral(grid={grid}) scf(maxcyc={cyc})').format(goal=goal,
                                                                         conv=convergence,
                                                                         msteps=max_step_size,
                                                                         nsteps=num_steps,
                                                                         grid=grid,
                                                                         cyc=maxcyc)

        super().__init__(method, basis_set, calc_line)
        self.name = 'gopt_{}'.format(direction)


class IrcCalc(Calculation):

    def __init__(self,
                 method: str,
                 basis_set: str,
                 direction: str = 'reverse',
                 convergence: str = 'tight',
                 grid: str = 'superfine',
                 maxcyc: int = 256,
                 max_points: int = 2,
                 step_size: int = 10):
        """
        Calc for irc calculations with exposed commonly customizable calc kws
        :param method: level of theory
        :param basis_set: basis set for calc
        :param direction: Defaults to 'reverse'. Choose {reverse} for reactants and {forward} for products
        :param convergence: Defaults to 'tight'. dictates restrictiveness of convergence metrics.
            Options include {tight} and {verytight}
        :param grid: Defaults to 'superfine'. dictates fineness of integral grid for DFT methods.
            Options include {finegrid}, {superfine} and {ultrafine}
        :param maxcyc: Defaults to 256. how many cycles scf calc should use when finding
        :param max_points: Defaults to 64. The num of steps to take when searching for stationary points
        :param step_size: Defaults to 1. The size of each step to take on the PES in units of 0.01 Bohr.
            If < 1, step is in units of 0.01 amu^(1/2) Bohr
        """

        self.method = method
        self.basis_set = basis_set
        self.direction = direction
        self.convergence = convergence
        self.grid = grid
        self.max_points = max_points
        self.step_size = step_size
        self.maxcyc = maxcyc

        # line specific to irc calcs
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


class Restart(Calculation):

    def __init__(self, name, method, basis_set, calc='opt'):
        """
        Blank calculation class which is used by managers to restart from checkpoint files

        :param method: Method for calc, not sure if necessary?
        :param basis_set: Basis for calc, see above
        :param calc: calc kw to replace, either opt or irc
        """

        self.name = name
        self.method = method
        self.basis_set = basis_set
        self.calc = calc

        if self.calc == 'opt':
            calc_line = 'opt=restart'

        else:
            calc_line = 'irc=restart'

        super().__init__(self.method, self.basis_set, calc_line)
