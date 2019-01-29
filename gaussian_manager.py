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

    #TODO: Test the assertion statements
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
                         resolve_attempts=32):

        #Assign kwarg defaults if not overridden
        input_filepath = input_filepath or self.input_filepath
        output_filepath = output_filepath or self.output_filepath

        #Generate necessary info for gaussian command
        input_filepath = gaussian_utils.sanitize_path(input_filepath)
        output_filepath = gaussian_utils.sanitize_path(output_filepath)
        log_filepath = log_filepath or (os.path.dirname(output_filepath) + 'error_log.txt')

        if resolve_errors:
            for _ in range(resolve_attempts):
                try:
                    self._run_gaussian_command(input_filepath, output_filepath)
                except exceptions.GaussianManagerError as error:
                    try:
                        input_filepath = self._call_corresponding_error_code_method(error, input_filepath)
                        continue
                    except exceptions.GMUnknownErrorCode as e:
                        with open(log_filepath) as log:
                            error_message = 'error code {0} encountered with output file {1}'.format(e.args, output_filepath)
                            print(error_message + ', logging...')
                            log.write(error_message)
                else:
                    break
        else:
            try:
                self._run_gaussian_command(input_filepath, output_filepath)
            except exceptions.GaussianManagerError as error:
                error.args = 'Gaussian failed with error code {}'.format(error.args)
                raise error

    #FIXME: these fxns need to be completed!!!
    def resolve_convergence_error(self, input_filepath):

        return input_filepath

    def resolve_input_error(self, input_filepath):

        return input_filepath

    def resolve_basis_error(self, input_filepath):

        return input_filepath

    def resolve_proximity_error(self, input_filepath):

        return input_filepath

    def _run_gaussian_command(self,
                         input_filepath,
                         output_filepath):

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

    def _call_corresponding_error_code_method(self, error, input_filepath):
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
            new_input = self.resolve_convergence_error(input_filepath)
            return new_input
        elif error.args == 'l101':
            new_input = self.resolve_input_error(input_filepath)
            return new_input
        elif error.args == 'l202':
            input_filepath = self.resolve_proximity_error(input_filepath)
            return new_input
        elif error.args == 'l301':
            input_filepath = self.resolve_basis_error(input_filepath)
            return new_input

        else:
            raise exceptions.GMUnknownErrorCode(error.args)
