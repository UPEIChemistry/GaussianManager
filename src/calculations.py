"""Module containing the keyword dictionary for GM"""

'# method/basis_set opt(ts, calcfc, noeigen, tight) integral(grid=superfine) scf(maxcyc=256) freq'
'# method/basis_set irc(direction, calcfc, maxpoints=64, stepsize=1, tight) integral(grid=superfine) scf(maxcyc=256) freq'

EXTRA_KWS = 'integral(grid=superfine) scf(maxcyc=256)'

class Calculation(object):

   def __init__(self,
                method,
                basis_set,
                calc_kws,
                extra_kws):

        self.method = method
        self.basis_set = basis_set
        self.calc_kws = calc_kws
        self.extra_kws = extra_kws
        self.name = type(self).__name__

   def get_calc_line(self):

    string = '# {}/{} {} {}'.format(self.method,
                                    self.basis_set,
                                    self.calc_kws,
                                    self.extra_kws)

    return string

class TsoptCalc(Calculation):

    def __init__(self,
                 method,
                 basis_set,
                 calc_kws='opt(ts, calcfc, noeigen, tight)',
                 extra_kws='{} freq'.format(EXTRA_KWS)):

        #FIXME: Figure out how to make gaussian keywords customizable
        super().__init__(method,
                         basis_set,
                         calc_kws,
                         extra_kws)

class IrcRevCalc(Calculation):

    def __init__(self,
                 method,
                 basis_set,
                 max_points=64,
                 step_size=0.01,
                 converge_threshold,
                 extra_kws=EXTRA_KWS):

        super().__init__(method,
                         basis_set,
                         'IRC(REVERSE, CALCFC',
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
                 converge_threshold=CONVERGE_THRESHOLD,
                 extra_kws=EXTRA_KWS):

        super().__init__(method,
                         basis_set,
                         'IRC(FORWARD, CALCFC',
                         max_points,
                         step_size,
                         converge_threshold,
                         extra_kws)
