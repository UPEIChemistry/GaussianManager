"""Module containing Calculation class and subclasses required for GM. A single Calculation object
    serves the config line which is the main interface between user and gaussian"""

'# method/basis opt(ts, calcfc, noeigen, tight) integral(grid=superfine) scf(maxcyc=256) freq'
'# method/basis irc(direction, calcfc, maxpoints=5, stepsize=10, tight) integral(grid=superfine) scf(maxcyc=256) freq'


class Calculation(object):

    def __init__(self,
                 method: str,
                 basis_set: str):
        """
        Super class for calc classes, should only be instantiated if a full calc_line is
            provided

        :param method: level of theory for calc
        :param basis_set: basis set for calc
        """

        self.method = method
        self.basis_set = basis_set

        self.name = 'calc'

    def create_calc_line(self):
        """Must return calc line"""

        raise NotImplementedError

    def get_calc_line(self) -> str:
        """Generates the string required for the config line for gaussian"""

        # Standard required calculation line required for gaussian
        calc_line = self.create_calc_line()
        string = '# {}/{} {}'.format(self.method,
                                     self.basis_set,
                                     calc_line)

        return string


class TsoptCalc(Calculation):

    def __init__(self,
                 method: str,
                 basis_set: str,
                 goal: str = 'ts',
                 convergence: str = 'tight',
                 grid: str = 'ultrafine',
                 max_step_size: int = 64,
                 num_steps: int = 512,
                 scf: str = 'maxcyc=256'):
        """
        Calc for tsopt calculations with exposed commonly customizable calc kws

        :param method: level of theory
        :param basis_set: basis set for calc
        :param goal: Defaults to 'ts'. Which search algorithm to use, can either be {ts} or {qst3}
        :param convergence: Defaults to 'tight'. dictates restrictiveness of convergence metrics.
            Options include {tight} and {verytight}
        :param grid: Defaults to 'superfine'. dictates fineness of integral grid for DFT methods.
            Options include {finegrid}, {superfine} and {ultrafine}
        :param scf: Defaults to maxcyc=256. how many cycles scf calc should use when finding the
            energy of a stationary point
        """

        super().__init__(method, basis_set)

        self.goal = goal
        self.convergence = convergence
        self.grid = grid
        self.max_step_size = max_step_size
        self.num_steps = num_steps
        self.scf = scf
        self.name = goal

    def create_calc_line(self):

        # Line specific to ts-opt calcs
        calc_line = ('opt({goal}, calcfc, cartesian, noeigen, {conv}, maxstep={msteps}, maxcycles={nsteps}) '
                     + 'integral(grid={grid}) scf({scf}) freq').format(
            goal=self.goal,
            conv=self.convergence,
            msteps=self.max_step_size,
            nsteps=self.num_steps,
            grid=self.grid,
            scf=self.scf
        )

        return calc_line


class GoptCalc(Calculation):

    def __init__(self,
                 method: str,
                 basis_set: str,
                 direction: str = 'reverse',
                 convergence: str = 'tight',
                 grid: str = 'ultrafine',
                 max_step_size: int = 64,
                 num_steps: int = 512,
                 scf: str = 'maxcyc=256'):
        """
        Calc for tsopt calculations with exposed commonly customizable calc kws
        :param method: level of theory
        :param basis_set: basis set for calc
        :param direction: Defaults to 'reverse'. Choose {reverse} for reactants and {forward} for products
        :param convergence: Defaults to 'tight'. dictates restrictiveness of convergence metrics.
            Options include {tight} and {verytight}
        :param grid: Defaults to 'superfine'. dictates fineness of integral grid for DFT methods.
            Options include {finegrid}, {superfine} and {ultrafine}
        :param scf: Defaults to maxcyc=256. how many cycles scf calc should use when finding the
            energy of a stationary point
        """

        super().__init__(method, basis_set)

        self.direction = direction
        self.convergence = convergence
        self.grid = grid
        self.max_step_size = max_step_size
        self.num_steps = num_steps
        self.scf = scf
        self.name = 'gopt_{}'.format(direction)

    def create_calc_line(self):

        # Line specific to ts-opt calcs
        calc_line = ('opt({conv}, cartesian, maxstep={ssteps}, maxcycles={nsteps}) '
                     + 'integral(grid={grid}) scf({scf})').format(
            conv=self.convergence,
            ssteps=self.max_step_size,
            nsteps=self.num_steps,
            grid=self.grid,
            scf=self.scf
        )

        return calc_line


class IrcCalc(Calculation):

    def __init__(self,
                 method: str,
                 basis_set: str,
                 direction: str = 'reverse',
                 convergence: str = 'tight',
                 grid: str = 'superfine',
                 scf: str = 'maxcyc=256',
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
        :param scf: Defaults to maxcyc=256. how many cycles scf calc should use when finding
        :param max_points: Defaults to 64. The num of steps to take when searching for stationary points
        :param step_size: Defaults to 1. The size of each step to take on the PES in units of 0.01 Bohr.
            If < 1, step is in units of 0.01 amu^(1/2) Bohr
        """

        super().__init__(method, basis_set)

        self.direction = direction
        self.convergence = convergence
        self.grid = grid
        self.max_points = max_points
        self.step_size = step_size
        self.scf = scf
        self.name = 'irc_' + direction

    def create_calc_line(self):

        # line specific to irc calcs
        calc_line = ('irc({dir}, calcfc, maxpoints={pts}, stepsize={step}, {conv}) '
                     + 'integral(grid={grid}) scf({scf})').format(
            dir=self.direction,
            pts=self.max_points,
            step=self.step_size,
            conv=self.convergence,
            grid=self.grid,
            scf=self.scf
        )

        return calc_line
