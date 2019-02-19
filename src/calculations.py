"""Module containing the keyword dictionary for GM"""

class Calculation(object):

   def __init__(self,
                method,
                basis_set,
                calc_kws,
                max_points,
                step_size,
                converge_threshold,
                extra_kws):

        self.method = method
        self.basis_set = basis_set
        self.calc_kws = calc_kws
        self.max_points = max_points
        self.step_size = step_size
        self.converge_threshold = converge_threshold
        self.extra_kws = extra_kws

        self.name = type(self).__name__

   def get_calc_line(self):

    string = '# {}/{} {}, {}, MAXPOINTS={}, STEPSIZE={}) {}'.format(self.method,
                                                                    self.basis_set,
                                                                    self.calc_kws,
                                                                    self.converge_threshold,
                                                                    self.max_points,
                                                                    self.step_size,
                                                                    self.extra_kws)

    return string

class TsoptCalc(Calculation):

    def __init__(self,
                 method,
                 basis_set,
                 max_points=64,
                 step_size=0.01,
                 converge_threshold='VERYTIGHT, INT=ULTRAFINE',
                 extra_kws='SCF(MAXCYC=256) FREQ'):

        super().__init__(method,
                         basis_set,
                         'OPT=(TS, CALCFC',
                         max_points,
                         step_size,
                         converge_threshold,
                         extra_kws)

class IrcRevCalc(Calculation):

    def __init__(self,
                 method,
                 basis_set,
                 max_points=64,
                 step_size=0.01,
                 converge_threshold='VERYTIGHT, INT=ULTRAFINE',
                 extra_kws='SCF(MAXCYC=256)'):

        super().__init__(method,
                         basis_set,
                         'IRC=(REVERSE',
                         max_points,
                         step_size,
                         converge_threshold,
                         extra_kws)

class IrcFwdCalc(Calculation):

    def __init__(self,
                 method,
                 basis_set,
                 max_points=64,
                 step_size=0.01,
                 converge_threshold='VERYTIGHT, INT=ULTRAFINE',
                 extra_kws='SCF(MAXCYC=256)'):

        super().__init__(method,
                         basis_set,
                         'IRC=(FORWARD',
                         max_points,
                         step_size,
                         converge_threshold,
                         extra_kws)
