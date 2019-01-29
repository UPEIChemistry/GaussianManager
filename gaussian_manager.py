import exceptions
import gaussian_utils
import os
import subprocess



class GaussianManager(object):
    """Class for managing single gaussian jobs, including generation of input file, running the
        specified job, handling any encountered errors, and parsing output files to extract final
        molecular geometries and any necessary information for the appropriate calculation type.
        GM currently supports running TSOPT and IRC jobs, but there are plans to extend this support
        to QST2/3 calculations as well.

        There are two main ways of using GM; either as a wrapper for running a gaussian job, or as
        a library of useful tools for existing inputs/outputs. When using as a wrapper, one should
        instatiate a GM object by passing the appropriate attributes for running the job. When
        using as a toolbox, instatiate with the defaults, and override the args to whichever method
        you require.

        For example, you could have already have an input file, and you could use GM
        to submit the job and parse the outputs, or handle any potential errors thrown by gaussian.
        Or, you could have an unoptimized xyz file to run some calculations on, and work GM from
        instatiation to generate the output molecule

        Args:
            input_molecule_path (str, optional): Defaults to None. Path to the input molecule to
                run a gaussian job. Only for standard GM usage, if using as library leave at
                default.
            root_experiment_dir (str, optional): Defaults to None. Root directory where GM will
                start creating input files. Only for standard GM usage, if using as library leave
                at default.
            method (str, optional): Defaults to {mp2}. The level of theory which the gaus job
                shall be run at
            basis_set (str, optional): Defaults to {6-31G}
            calculation (str, optional): Defaults to {ts-opt}. Currently can only be {irc} or
                {ts-opt}, plans to add support for {qst2} and {qst3}
    """

    def __init__(self,
                 input_molecule_path=None,
                 root_experiment_dir=None,
                 method='mp2',
                 basis_set='6-31G',
                 calculation='ts-opt',
                 overwrite=False):

        #Set class attributes
        if input_molecule_path is not None:
            self.input_molecule_path = gaussian_utils.sanitize_path(input_molecule_path)
        if root_experiment_dir is not None:
            self.root_experiment_dir = gaussian_utils.sanitize_path(root_experiment_dir)

        self.method = method
        self.basis_set = basis_set
        self.calculation = calculation
        self.overwrite = overwrite

        if input_molecule_path is not None and root_experiment_dir is not None:
            self.output_molecule_path = (self.root_experiment_dir
                                        + 'reaction/'
                                        + os.path.basename(self.input_molecule_path)[:-4] + '/'
                                        + method + '/'
                                        + basis_set + '/'
                                        + calculation + '/')

            self.input_filepath = self.output_molecule_path + 'input.com'
            self.output_filepath = self.output_molecule_path + 'output.log'

    def generate_gaussian_input(self,
                                molecule_filepath=None,
                                input_filepath=None,
                                method=None,
                                basis_set=None,
                                calculation_keywords=None,
                                calculation=None,
                                multiplicity='-1 1',
                                overwrite=False):

        #Check kwargs and assign defaults
        molecule_filepath = molecule_filepath or self.input_molecule_path
        input_filepath = input_filepath or self.input_filepath
        method = method or self.method
        basis_set = basis_set or self.basis_set

        #NOTE: If adding more calculation support, need to add keywords here!
        #Assign calculation_keywords default
        if calculation_keywords is None:
            calculation = self.calculation
            if calculation == 'ts-opt':
                calculation_keywords = 'OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
            elif calculation == 'irc':
                calculation_keywords = 'IRC=CALCFC SCF(maxcyc=256)'

        #Sanitize paths
        molecule_filepath = gaussian_utils.sanitize_path(molecule_filepath)
        input_filepath = gaussian_utils.sanitize_path(input_filepath)

        #Define the necessary parts for the input file
        input_destination = os.path.dirname(input_filepath)
        reaction_name = os.path.basename(molecule_filepath)[:-4]
        coordinates = gaussian_utils.get_coords_from_xyz(molecule_filepath)

        #Create necessary directories for input files
        gaussian_utils.make_dir(input_destination)

        #Create the input file
        gaussian_utils.write_input_file(input_filepath=input_filepath,
                                        method=method,
                                        basis_set=basis_set,
                                        calculation_keywords=calculation_keywords,
                                        reaction_name=reaction_name,
                                        multiplicity=multiplicity,
                                        coordinates=coordinates)

    #TODO: Test this to make sure that it's ALL working
    def start_calculation(self,
                         input_filepath=None,
                         output_filepath=None,
                         resolve_errors=True,
                         log_filepath=None,
                         resolve_attempts=8):
        """Exposed method for starting gaussian with provided input_filepath.  If resolve_errors,
            then this method will create new tweaked input files to try getting the calculation
            to run successfully. If GM is unable to resolve the error, it will log the error code
            and how it tried to resolve the error along with the final error code before
            resolve_attempts ran out.

            input_filepath (str, optional): Defaults to None. Path to the input file for running
                gaussian
            output_filepath (str, optional): Defaults to None. Path to where gaussian should write
                it's output file
            resolve_errors (bool, optional): Defaults to True. If True, the method will try to
                resolve any errors thrown by gaussian that it recognizes
            log_filepath (str, optional): Defaults to None. Override to specify where GM writes the
                error log, otherwise the log is written to the directory containing the output file
            resolve_attempts (int, optional): Defaults to 32. Counter for long GM should attempt to
                resolve errors. Best if counter is not set too high, as gaussian calculation are
                costly

            Raises:
                exceptions.GMUnsupportedErrorCode: Raised if GM cannot resolve the error
        """

        #Assign kwarg defaults if not overridden
        input_filepath = input_filepath or self.input_filepath
        input_filepath = gaussian_utils.sanitize_path(input_filepath)
        output_filepath = output_filepath or self.output_filepath
        output_filepath = gaussian_utils.sanitize_path(output_filepath)
        log_filepath = log_filepath or (os.path.dirname(output_filepath) + 'error_log.txt')

        if resolve_errors:

            #Set input variable for loop and some counters
            new_input_file = input_filepath
            counters = {'input_error_counter' : 0,
                        'converge_error_counter' : 0}

            #Loop until attempts runs out
            for _ in range(resolve_attempts):

                #Try running gaussian with provided input/output
                try:
                    self._run_gaussian_discover_errors(new_input_file, output_filepath)
                    break
                except exceptions.GaussianManagerError as error:
                    try:
                        #This will raise GMUnknownErrorCode if it doesn't recognize the error code
                        error_resolve_method = self._get_corresponding_error_code_method(error)

                        #Increment some counters for logistics
                        if error_resolve_method is self._resolve_input_error:
                            counters['input_error_counter'] += 1
                        if error_resolve_method is self._resolve_convergence_error:
                            counters['converge_error_counter'] += 1

                    #Catch GMUnknownErrorCode and raise it further
                    except exceptions.GMUnsupportedErrorCode as err:
                        gaussian_utils.log_appropriate_error_code(err, new_input_file, log_filepath)
                        raise err

                    #Run the resolve_error method and get the path to the new input file
                    new_input_file = error_resolve_method(input_filepath=input_filepath,
                                                          output_filepath=output_filepath,
                                                          error_log=log_filepath,
                                                          counters=counters)
        else:
            self._run_gaussian_discover_errors(input_filepath, output_filepath)

    def _run_gaussian_discover_errors(self,
                         input_filepath,
                         output_filepath):
        """Hidden method for calling gaussian_utils.run_gaussian_bash_command().  This method also
            catches any ambiguous errors thrown by gaussian and does some snooping to find out the
            appropriate error code before raising a more specific error

            Args:
                input_filepath (str): Filepath for the input to gaussian
                output_filepath (str): Filepath for where gaussian should write output

            Raises:
                exceptions.GaussianManagerError: Raised with the appropriate error code as error
                    message
        """

        #Get the name of the molecule
        molecule_name = os.path.basename(input_filepath).split('_')[0]

        #Run the command for the gaus job
        print('running calculation on {}...'.format(molecule_name))
        try:
            gaussian_utils.run_gaussian_bash_command(input_filepath, output_filepath)
        except subprocess.CalledProcessError:

            #Find out what the error code is for & raise an exception with that error code
            error_code = gaussian_utils.discover_gaussian_error_code(output_filepath)
            raise exceptions.GaussianManagerError(error_code)

        else:
            print('calculation on {} completed successfully'.format(molecule_name))

    def _get_corresponding_error_code_method(self, error):
        """Analyzes error.args for the appropriate error code and calls the correct function to fix
            the error.

            Args:
                error (GaussianManagerError): The exception thrown by _run_gaussian_command() if gaussian
                    errors out.  error.args will contain the appropriate error message parsed from
                    gaussian output file

            Raises:
                exceptions.GMUnknownErrorCode: Raised if the method doesn't know how to deal with the error code
        """

        if error.args == 'l123' or error.args == 'l502' or error.args == 'l9999' or error.args == 'l103':
            return self._resolve_convergence_error
        elif error.args == 'l101':
            return self._resolve_input_error
        else:
            raise exceptions.GMUnsupportedErrorCode(error.args)

    def _resolve_input_error(self, **kwargs):
        """Currently only makes sure that the final line has a single newline character on it"""

        input_filepath = kwargs['input_filepath']
        error_log = kwargs['error_log']
        input_counter = kwargs['counters']['input_error_counter']

        old_input_lines = gaussian_utils.write_error_log_read_input(error_log,
                                                                    input_filepath,
                                                                    input_counter)

        if old_input_lines[-1] != '\n':
            old_input_lines.append('\n')

        new_input_filepath = gaussian_utils.write_new_input(input_filepath, old_input_lines)
        return new_input_filepath

    #TODO: Add output parser to look for unoptimized structures to write new input file
    def _resolve_convergence_error(self, **kwargs):
        """Modifies the SCF(#) keyword in the input file.  Plans to later parse output for
            unoptimized structures to help locate optimums"""

        input_filepath = kwargs['input_filepath']
        error_log = kwargs['error_log']
        converge_counter = kwargs['counters']['converge_error_counter']

        old_input_lines = gaussian_utils.write_error_log_read_input(error_log,
                                                                    input_filepath,
                                                                    converge_counter)

        if converge_counter == 1:
            maxcyc = 512
        elif converge_counter == 2:
            maxcyc = 1024
        elif converge_counter >= 3:
            maxcyc = 2084

        before_SCF, after_SCF = old_input_lines[0].split('SCF')
        after_SCF = after_SCF[12:]
        new_first_line = before_SCF + 'SCF(maxcyc={})'.format(maxcyc) + after_SCF
        old_input_lines[0] = new_first_line

        new_input_filepath = gaussian_utils.write_new_input(input_filepath, old_input_lines)
        return new_input_filepath
