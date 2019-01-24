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
            self.input_molecule_path = os.path.expanduser(input_molecule_path)
        if root_experiment_dir is not None:
            self.root_experiment_dir = os.path.expanduser(self._add_trailing_slash(root_experiment_dir))
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
                                multiplicity=None,
                                overwrite=False):

        #Check kwargs and assign defaults
        if molecule_filepath is None:
            assert self.input_molecule_path
            molecule_filepath = self.input_molecule_path
        if input_filepath is None:
            assert self.input_filepath
            input_filepath = self.input_filepath
        if method is None:
            assert self.method
            method = self.method
        if basis_set is None:
            assert self.basis_set
            basis_set = self.basis_set
        if calculation_keywords is None:
            assert self.calculation
            calculation = self.calculation
            if calculation == 'ts-opt':
                calculation_keywords = 'OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
            elif calculation == 'irc':
                calculation_keywords = 'IRC=CALCFC SCF(maxcyc=256)'
        if multiplicity is None:
            multiplicity = '-1 1'

        #Define the necessary parts for the input file
        molecule_filepath = os.path.expanduser(molecule_filepath)
        input_filepath = os.path.expanduser(input_filepath)
        input_destination = os.path.dirname(input_filepath)
        reaction_name = os.path.basename(molecule_filepath)[:-4]
        with open(molecule_filepath, 'r') as file:
            coordinates = file.readlines()[2:]

        #Create necessary directories for input files
        self._makedir(input_destination, verbose=True)

        #Create the input file
        with open(input_filepath, 'w') as file:
            file.write('# {}/{} {}\n\n'.format(method, basis_set, calculation_keywords))
            file.write(reaction_name + '\n\n')
            file.write(multiplicity + '\n')
            file.write(''.join(line for line in coordinates))
            file.write('\n\n')

    #TODO: Test this to make sure that it's ALL working
    def run_gaussian_job(self,
                         input_filepath=None,
                         output_filepath=None,
                         resolve_errors=True):

        def identify_error(func):

            try:
                func(input_filepath, output_filepath)
            except exceptions.GaussianManagerError as error:
                self.resolve_gaussian_error(error.args, input_filepath)

        if resolve_errors:
            identify_error(self._run_gaussian_command)
        else:
            self._run_gaussian_command(input_filepath, output_filepath)

    #TODO: This should be tested through run_gaussian_job outward facing method
    def _run_gaussian_command(self,
                         input_filepath=None,
                         output_filepath=None):

        #Assign kwarg defaults if not overridden
        if input_filepath is None:
            assert self.input_filepath
            input_filepath = self.input_filepath
        if output_filepath is None:
            assert self.input_filepath
            output_filepath = self.output_filepath

        #Generate necessary info for gaussian command
        input_filepath = os.path.expanduser(self._add_trailing_slash(input_filepath))
        output_filepath = os.path.expanduser(self._add_trailing_slash(output_filepath))
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

    #TODO: Remove this when resolve_errors() is written and functional
    # #Run the command while checking for errors, resolve if resolve_errors toggled
            # if resolve_errors:

            #     #Set the initial input file for the run
            #     new_input_filepath = input_filepath

            #     #Attempt to re-run the job, if it fails, discern and attempt to resolve the error
            #     # and iterate the counter
            #     for _ in range(resolve_error_attempts):
            #         try:
            #             _run_command(new_input_filepath, output_filepath, molecule_name)
            #         except (exceptions.GaussianInputError,
            #                 exceptions.GaussianCovergeError,
            #                 exceptions.GaussianBasisError,
            #                 exceptions.GaussianProximityError,
            #                 exceptions.GaussianUnknownError) as error:

            #             #l101 corresponds to an input error
            #             if error is exceptions.GaussianInputError:
            #                 new_input_filepath = self.resolve_gaussian_error(new_input_filepath,
            #                                                                  input_error=True)
            #                 continue

            #             #l123, l502, l9999 all correspond to convergence errors
            #             elif error is exceptions.GaussianCovergeError:
            #                 new_input_filepath = self.resolve_gaussian_error(new_input_filepath,
            #                                                                  converge_error=True)
            #                 continue

            #             #l301 is a basis-set error
            #             elif error is exceptions.GaussianBasisError:
            #                 new_input_filepath = self.resolve_gaussian_error(new_input_filepath,
            #                                                                  basis_error=True)
            #                 continue

            #             #l202 is a proxmimity error
            #             elif error is exceptions.GaussianProximityError:
            #                 new_input_filepath = self.resolve_gaussian_error(new_input_filepath,
            #                                                                  prox_error=True)
            #                 continue

            #             #l103 is an internal gaussian fuck-up
            #             elif error is exceptions.GaussianUnknownError:
            #                 new_input_filepath = self.resolve_gaussian_error(new_input_filepath,
            #                                                                  unknown_error=True)
            #                 continue
            # else:
            #     _run_command(input_filepath, output_filepath, molecule_name)

    #FIXME: This fxn needs to be completed!!!
    def resolve_gaussian_error(self,
                               error_code,
                               input_filepath=None):

        def _resolve_input():

            with open(input_filepath, 'w') as file:
                input_filepath = file.readlines()

        def _resolve_convergence():
            pass

        def _resolve_basis():
            pass

        def _resolve_prox():
            pass

        def _resolve_unknown():
            pass

        if input_filepath is None:
            input_filepath = self.input_filepath

        if error_code == 'l101':
            _resolve_input()
        elif error_code == 'l123' or error_code == 'l502' or error_code == 'l9999':
            _resolve_convergence()
        elif error_code == 'l301':
            _resolve_basis()
        elif error_code == 'l202':
            _resolve_prox()
        elif error_code == 'l103':
            _resolve_unknown()

    def _add_trailing_slash(self, path):
        """checks to make sure given paths have the trailing /"""
        if path[-1] != '/':
            path = path + '/'

        return path

    def _makedir(self, path, overwrite=False, verbose=False):
        """Hidden method for creating directories"""

        if os.path.isdir(path):
            if overwrite:
                os.removedirs(path)
                os.makedirs(path)
            if verbose:
                print(path + ' already exists')
        else:
            os.makedirs(path)
            if verbose:
                print(path + ' created')

###OLD CODE####

    # def get_all_geometries(self):
    #     """Exposed convenience function which runs both tsopt and irc calculations, parses
    #         output files for xyz coordinates, and compiles all of the geometries
    #     """

    #     self._get_ts_geometries()
    #     self._get_reactant_and_product_geometries()
    #     self._compile_all_geometries()

    # def _get_ts_geometries(self):
    #     """function for GM which completes the main action of taking the given raw xyz
    #         files, running a tsopt calc on them, parsing the output files to generate new optimized
    #         ts xyz files, but does not compile all geometries
    #     """

    #     #Create input files for tsopt, creates self.tsopt_reaction_paths dict
    #     self.tsopt_reaction_paths = self._create_input_files(self.unopt_ts_xyz_filepaths,
    #                                                          self.tsopt_paths,
    #                                                          'OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ',
    #                                                          '-1 1')

    #     #Create empty list, then populate it with TS xyz filepaths
    #     self.opt_ts_xyz_filepaths = []
    #     for key, ts_path in self.tsopt_reaction_paths.items():

    #         #Seperate key in vars
    #         reaction = key.split('_')[-1]

    #         #Generate output files
    #         try:
    #             self._run_gaussian(ts_path)
    #         except subprocess.CalledProcessError:
    #             print('problem with {}, logging to errors.log'.format(ts_path))
    #             with open(ts_path + 'output.log', 'r') as file:
    #                 error_lines = file.readlines()
    #                 error_line = error_lines[-3]
    #             with open(self.experiment_dir + 'gaussian_errors.log', 'a') as log_file:
    #                 log_file.write('error with reaction {}: ({})\n'.format(ts_path, error_line))
    #             continue

    #         #Parse those output files and generate the xyz files, store the paths to those xyz files in a list
    #         try:
    #             self.opt_ts_xyz_filepaths.append(self._generate_geometry_from_tsopt_output(ts_path, reaction))
    #         except GaussianManagerError:
    #             continue
    #     print('TS geometries generated successfully')

    # def _get_reactant_and_product_geometries(self):
    #     """function for GM which completes the main action of taking optimized TS xyz files, running
    #         IRC calcs on them and parsing the output files to generate reactant and product xyz files,
    #         but does not compile the geometries
    #     """

    #     #Create the input files for the IRC calculation
    #     self.irc_reaction_paths = self._create_input_files(self.opt_ts_xyz_filepaths,
    #                                                        self.irc_paths,
    #                                                        'IRC=CALCFC SCF(maxcyc=256)',
    #                                                        '-1 1')
    #     self.reactant_product_xyz_filepaths = []
    #     for key, irc_path in self.irc_reaction_paths.items():

    #         reaction = key.split('_')[-1]
    #         try:
    #             self._run_gaussian(irc_path)
    #         except subprocess.CalledProcessError:
    #             print('problem with {}, logging to errors.log'.format(irc_path))
    #             with open(irc_path + 'output.log', 'r') as file:
    #                 error_lines = file.readlines()
    #                 error_line = error_lines[-3]
    #             with open(self.experiment_dir + 'gaussian_errors.log', 'a') as log_file:
    #                 log_file.write('error with reaction {}: ({})\n'.format(irc_path, error_line))
    #             continue

    #         try:
    #             reaction_path, product_path = self._generate_geometries_from_irc_output(irc_path, reaction)
    #             self.reactant_product_xyz_filepaths.append(reaction_path)
    #             self.reactant_product_xyz_filepaths.append(product_path)
    #             print('Reactant and product geometries generated successfully')
    #         except GaussianManagerError:
    #             print('no output.log file for {}'.format(irc_path))
    #             continue

    # def _compile_all_geometries(self):
    #     """Hidden fxn which pulls all of the generated geometries from the file-tree and dumps them
    #         into a directory in experiment_dir
    #     """

    #     geometry_dir = self.experiment_dir + 'geometries/'
    #     self._makedir(geometry_dir)
    #     reaction_paths = self.opt_ts_xyz_filepaths + self.reactant_product_xyz_filepaths
    #     for path in reaction_paths:
    #         reaction_name, _ = os.path.basename(path).split('_')
    #         new_path = geometry_dir + reaction_name + '/'
    #         self._makedir(new_path)
    #         subprocess.run('cp {} {}'.format(path, new_path), shell=True, check=True)
    #     print('geometries compiled successfully')

    # def _run_gaussian(self, reaction_path):
    #     """Submit all of the input files created by generate_inputs"""

    #     input_file_path = reaction_path + 'input.com'
    #     output_file_path = reaction_path + 'output.log'
    #     print('running calculation on {}...'.format(input_file_path))
    #     try:
    #         subprocess.run("module load gaussian/g09.e01; g09 < {} >& {}".format(input_file_path, output_file_path), shell=True, check=True)
    #     except subprocess.CalledProcessError as error:
    #         raise error

    # def _generate_geometry_from_tsopt_output(self, path, reaction):
    #     """Hidden fxn for creating TS xyz files from a tsopt gaussian output log file.

    #         Args:
    #             path (str): The path to the output.log file
    #             reaction (str): The name of the reaction, used to name the xyz file appropriately

    #         Raises:
    #             GaussianManagerError: Raised if no output.log in path

    #         Returns:
    #             str: the path to the generated xyz file
    #     """

    #     output_file_path = path + 'output.log'

    #     #Check if output.log exists, if so parse the output file, if not raise GaussianManagerError
    #     try:
    #         transition_state = self._parse_log_file(output_file_path, 'tsopt')
    #     except GaussianManagerError as error:
    #         raise error

    #     #Define filename for transition state xyz file
    #     transition_state_reaction_path = path + reaction + '_transition-state.xyz'

    #     #Generate the xyz file in the experiment file tree, append to opt_ts_xyz_filepaths list
    #     self._generate_xyz_file(transition_state, transition_state_reaction_path)
    #     self.opt_ts_xyz_filepaths.append(transition_state_reaction_path)
    #     print('{} generated successfully'.format(transition_state_reaction_path))

    #     return transition_state_reaction_path

    # def _generate_geometries_from_irc_output(self, path, reaction):
    #     """Hidden fxn for creating product and reactant xyz filse from an irc gaussian output file

    #         Args:
    #             path (str): the path to the irc output.log file
    #             reaction (str): the name of the reaction, used to name the xyz file

    #         Raises:
    #             GaussianManagerError: Raised if no output.log file in path
    #     """

    #     output_file_path = path + 'output.log'

    #     #Check if output.log exists, parse the file if so, raise error if not
    #     try:
    #         reactant, product = self._parse_log_file(output_file_path, 'irc')
    #     except GaussianManagerError as error:
    #         raise error

    #     #generate the xyz files for the reactants and products
    #     reactant_path = path + reaction + '_reactant.xyz'
    #     product_path = path + reaction + '_product.xyz'
    #     self._generate_xyz_file(reactant, reactant_path)
    #     self._generate_xyz_file(product, product_path)
    #     print('{} and {} generated successfully.'.format(reactant_path, product_path))

    #     return reactant_path, product_path

    # def _create_input_files(self, xyz_filepaths, paths_dict, calculation_kws, multiplicity, overwrite=True):
    #     """Hidden fxn which creates input files for given xyz files, placing the input files at a
    #         given set of paths denoted by paths_dict.

    #         Args:
    #             xyz_filepaths (list): The list of xyz files that will be used to generate input files
    #             paths_dict (dict): The dictionary of where the input files should be placed
    #             calculation_kws (str): the string of gaussian keywords which denote what calc the input file is for
    #             multiplicity (str): the multiplicity of the input file molecule
    #             overwrite (bool, optional): Defaults to True. If input files exist in the given paths_dict already, they'll be overwritten

    #         Returns:
    #             dict: A dict containing the paths to the reaction folders, with keys in method_basis_reaction format
    #     """

    #     reaction_paths = {}
    #     #Loop through all of the specified transition state xyz files
    #     for xyz_path in xyz_filepaths:
    #         reaction_name = os.path.basename(xyz_path)[:-4].split('_')[0]

    #         #Loop through all of the method/basis/calc directories for a given calc
    #         for key, destination_path in paths_dict.items():
    #             method, basis = key.split('_')

    #             #Make the method/basis/calc/reaction directories
    #             reaction_dir = destination_path + reaction_name + '/'
    #             self._makedir(reaction_dir)
    #             reaction_paths[key + '_' + reaction_name] = reaction_dir

    #             with open(xyz_path, 'r') as file:
    #                 coordinates = file.readlines()[2:]

    #             #Stops algorithm from overwriting existing input files, if they exist.
    #             #Reaction_path is still added to reaction_paths dict, however
    #             if os.path.isfile(reaction_dir + 'input.com') and not overwrite:
    #                 continue

    #             with open(reaction_dir + 'input.com', 'w') as file:
    #                 file.write('# {}/{} {}\n\n'.format(method, basis, calculation_kws))
    #                 file.write(reaction_name + '\n\n')
    #                 file.write(multiplicity + '\n')
    #                 file.write(''.join(line for line in coordinates))
    #                 file.write('\n\n')

    #     return reaction_paths

    # def _parse_log_file(self, path, calculation_type):
    #     """Parse through log file depending on which type of calculation was run and return
    #         the raw coordinates for the atom(s) optimized by the gaussian job

    #         Args:
    #             path (str): Path to the log file
    #             calculation_type (str): Either 'irc' or 'tsopt', defines which output file type is being parsed for the algorithm

    #         Raises:
    #             exceptions.GaussianManagerError: Raised if _sanitize_coordinates() is unable to find coordinates

    #         Returns:
    #             list (if calculation_type is 'tsopt'): list of lines containing the transition state coordinates
    #             tuple (if calculation_type is 'irc'): Tuple of lists of lines containing reactant and product coordinates, respectively
    #     """

    #     def _sanitize_coordinates(unsan_coords):
    #         """Pull out the sanitized xyz coordinates for given output file. Works by interating
    #             backwards through the file until it finds the first occurance of 'Distance Matrix'
    #             and 'Input Orientation' which denote end and start of the coordinates, respectively.
    #             For irc calculations the log file must be split into forward and reverse halves, but
    #             the algorithm works when this is done. IRC half files are passed to this method
    #             by _parse_log_files()

    #             Args:
    #                 unsan_coords (list): list of log file lines, if running on irc, then the list contains lines for only half the log file

    #             Raises:
    #                 exceptions.ParseError: raised if algorithm is unable to find the strings that bookend the coordinates

    #             Returns:
    #                 list: list of pure coordinates with atomic symbols, spaced appropriately for insertion into xyz file
    #         """

    #         atom_num_dict = {'1' : 'H',
    #                  '6': 'C',
    #                  '7 ': 'N',
    #                  '8' : 'O',
    #                  '9' : 'F',
    #                  '15': 'P',
    #                  '16': 'S',
    #                  '17': 'Cl',
    #                  '35': 'Br',
    #                  '53': 'I'
    #                 }

    #         end_idx = None
    #         for i, line in enumerate(reversed(unsan_coords)):
    #             #Catch the ending of coordinates
    #             if end_idx is None and 'Distance matrix (angstroms):' in line:
    #                 end_idx = i
    #             #Catch the beginning of the coords
    #             if 'Input orientation:' in line:
    #                 beginning_idx = i
    #                 break

    #         #Check to make sure coordinate chunk indices can be found
    #         if end_idx is None or beginning_idx is None:
    #             raise ParseError('Unable to find key strings for coordinates in output file: '
    #                                                   + path
    #                                                   + ' -- check to make sure gaussian created output.log successfully for reaction.')

    #         #Pull out from 'Input Orientation' to 'Distance Matrix'
    #         pruned_raw_coords = unsan_coords[-beginning_idx: -end_idx - 1]

    #         #Remove all additional info from coordinates to leave simply atomic symbol and xyz coordinates
    #         sanitized_coordinates = []
    #         for line in pruned_raw_coords:
    #             if "---------------" in line or "Coordinates" in line or "Number" in line:
    #                 continue
    #             #Remove the the space before atomic_num and the space between atomic_num and coordinates
    #             line = line[17:]
    #             line = line[0] + '                  ' + line[20:]
    #             #Swap out atomic_num for the element symbol
    #             for key, value in atom_num_dict.items():
    #                 if key == line[0]:
    #                     line = value + line[1:]
    #                     break
    #             sanitized_coordinates.append(line)
    #         return sanitized_coordinates

    #     if not os.path.isfile(path):
    #         raise OutputLogError('no output.log file for ' + path)

    #     with open(path, 'r') as file:
    #         lines = file.readlines()

    #     #IRC log files have to be split into halves in order to properly parse reactant & product coords
    #     if calculation_type == 'irc':
    #         for i, line in enumerate(lines):
    #             if ' Calculation of FORWARD path complete.' in line:
    #                 forward_path_idx = i
    #                 break
    #         #Pull out coordinates
    #         product_coords = _sanitize_coordinates(lines[:forward_path_idx + 1])
    #         reactant_coords = _sanitize_coordinates(lines[forward_path_idx + 1:])

    #         return reactant_coords, product_coords
    #         #Generate xyz file from coordinates

    #     #TSOPT log files only have 1 important geometry to look for, so can sanitize the entire file
    #     if calculation_type == 'tsopt':
    #         transition_state_coords = _sanitize_coordinates(lines)
    #         return transition_state_coords

    # def _generate_xyz_file(self, coordinates, file_path, verbose=False):
    #     """Generates an xyz file at file_path with given coordinates

    #         Args:
    #             coordinates (list): list of lines describing coordinates
    #             file_path (str): path of where the xyz file should be created
    #     """

    #     molecule_type = os.path.basename(file_path)[:-4]
    #     with open(file_path, 'w') as file:
    #         #Naming the molecule: reaction_molecule-type e.g. F-CH3-OH_reactant
    #         file.write(str(len(coordinates)) + '\n' + molecule_type + '\n')
    #         file.write(''.join(line for line in coordinates))
    #     if verbose:
    #         print('{} file created successfully.'.format(molecule_type))

    # def _construct_filesystem(self):
    #         """Hidden method which is called upon object instantiation which constructs the scaffold of
    #             the file system based on the methods and basis-sets chosen. This file system is further
    #             built upon by other GaussianManager class methods
    #         """

    #         # Construct root dir and folder for logging errors
    #         self._makedir(self.experiment_dir)
    #         #Construct method dirs
    #         tsopt_paths = {}
    #         irc_paths = {}
    #         for method in self.methods:
    #             method_path = self.experiment_dir + method + '/'
    #             self._makedir(method_path)
    #             for bs in self.basis_sets:
    #                 basis_path = method_path + bs + '/'
    #                 self._makedir(basis_path)
    #                 for calc in self.calculations:
    #                     calculation_path = basis_path + calc + '/'
    #                     self._makedir(calculation_path)
    #                     if calc == 'irc':
    #                         irc_paths[str(method) + '_' + str(bs)] = calculation_path
    #                     elif calc == 'tsopt':
    #                         tsopt_paths[str(method) + '_' + str(bs)] = calculation_path
    #         print('file system scaffold constructed.')
    #         return tsopt_paths, irc_paths
