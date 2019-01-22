import os
import subprocess

class GaussianManagerError(Exception):
    pass

class ParseError(GaussianManagerError):
    pass

class OutputLogError(GaussianManagerError):
    pass

#TODO: Refactor to be a library, rather than a single use script
#TODO: Add TS checker function to make sure TS are real (single imaginary frequency)
#TODO: If adding support for more calculations, methods which have to modified are: __init__(), generate_inputs(), generate_geometries_from_outputs(), _parse_log_file() _construct_filesystem()
#TODO: Find out how to make multiplicity specific to each molecule, instead of hardcoded



class GaussianManager(object):
    """Class for managing single gaussian jobs, including generation of input file, running the
        specified job, handling any encountered errors, and parsing output files to extract final
        molecular geometries and any necessary information for the appropriate calculation type.
        GM currently supports running TSOPT and IRC jobs, but there are plans to extend this support
        to QST2/3 calculations as well.

        Args:

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
        if input_molecule_path is not None and root_experiment_dir is not None:
            self.output_molecule_path = (self.root_experiment_dir
                                        + 'reaction/'
                                        + os.path.basename(self.input_molecule_path)[:-4]
                                        + '/')
        self.method = method
        self.basis_set = basis_set
        self.calculation = calculation
        self.overwrite = overwrite

    def generate_gaussian_input(self,
                                molecule_filepath=None,
                                input_destination_dir=None,
                                method=None,
                                basis_set=None,
                                calculation_keywords=None,
                                calculation=None,
                                multiplicity=None,
                                overwrite=True):

        #Check kwargs and assign defaults
        if molecule_filepath is None:
            molecule_filepath = self.input_molecule_path
        if method is None:
            method = self.method
        if basis_set is None:
            basis_set = self.basis_set
        if calculation_keywords is None:
            calculation = self.calculation
            if calculation == 'ts-opt':
                calculation_keywords = 'OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ'
            elif calculation == 'irc':
                calculation_keywords = 'IRC=CALCFC SCF(maxcyc=256)'
        if multiplicity is None:
            multiplicity = '-1 1'
        if input_destination_dir is None:
            input_destination_dir = (self.output_molecule_path
                                     + method + '/'
                                     + basis_set + '/'
                                     + calculation + '/')

        #Create necessary directories for input files
        input_destination_dir = os.path.expanduser(input_destination_dir)
        self._makedir(input_destination_dir, verbose=True)

        #Define the necessary parts for the input file
        molecule_filepath = os.path.expanduser(molecule_filepath)
        reaction_name = os.path.basename(molecule_filepath)[:-4]
        with open(molecule_filepath, 'r') as file:
            coordinates = file.readlines()[2:]

        #Create the input file
        with open(input_destination_dir + 'input.com', 'w') as file:
            file.write('# {}/{} {}\n\n'.format(method, basis_set, calculation_keywords))
            file.write(reaction_name + '\n\n')
            file.write(multiplicity + '\n')
            file.write(''.join(line for line in coordinates))
            file.write('\n\n')

    def get_all_geometries(self):
        """Exposed convenience function which runs both tsopt and irc calculations, parses
            output files for xyz coordinates, and compiles all of the geometries
        """

        self._get_ts_geometries()
        self._get_reactant_and_product_geometries()
        self._compile_all_geometries()

    def _get_ts_geometries(self):
        """function for GM which completes the main action of taking the given raw xyz
            files, running a tsopt calc on them, parsing the output files to generate new optimized
            ts xyz files, but does not compile all geometries
        """

        #Create input files for tsopt, creates self.tsopt_reaction_paths dict
        self.tsopt_reaction_paths = self._create_input_files(self.unopt_ts_xyz_filepaths,
                                                             self.tsopt_paths,
                                                             'OPT=(TS, CALCFC, NOEIGEN) SCF(maxcyc=256) FREQ',
                                                             '-1 1')

        #Create empty list, then populate it with TS xyz filepaths
        self.opt_ts_xyz_filepaths = []
        for key, ts_path in self.tsopt_reaction_paths.items():

            #Seperate key in vars
            reaction = key.split('_')[-1]

            #Generate output files
            try:
                self._run_gaussian(ts_path)
            except subprocess.CalledProcessError:
                print('problem with {}, logging to errors.log'.format(ts_path))
                with open(ts_path + 'output.log', 'r') as file:
                    error_lines = file.readlines()
                    error_line = error_lines[-3]
                with open(self.experiment_dir + 'gaussian_errors.log', 'a') as log_file:
                    log_file.write('error with reaction {}: ({})\n'.format(ts_path, error_line))
                continue

            #Parse those output files and generate the xyz files, store the paths to those xyz files in a list
            try:
                self.opt_ts_xyz_filepaths.append(self._generate_geometry_from_tsopt_output(ts_path, reaction))
            except GaussianManagerError:
                continue
        print('TS geometries generated successfully')

    def _get_reactant_and_product_geometries(self):
        """function for GM which completes the main action of taking optimized TS xyz files, running
            IRC calcs on them and parsing the output files to generate reactant and product xyz files,
            but does not compile the geometries
        """

        #Create the input files for the IRC calculation
        self.irc_reaction_paths = self._create_input_files(self.opt_ts_xyz_filepaths,
                                                           self.irc_paths,
                                                           'IRC=CALCFC SCF(maxcyc=256)',
                                                           '-1 1')
        self.reactant_product_xyz_filepaths = []
        for key, irc_path in self.irc_reaction_paths.items():

            reaction = key.split('_')[-1]
            try:
                self._run_gaussian(irc_path)
            except subprocess.CalledProcessError:
                print('problem with {}, logging to errors.log'.format(irc_path))
                with open(irc_path + 'output.log', 'r') as file:
                    error_lines = file.readlines()
                    error_line = error_lines[-3]
                with open(self.experiment_dir + 'gaussian_errors.log', 'a') as log_file:
                    log_file.write('error with reaction {}: ({})\n'.format(irc_path, error_line))
                continue

            try:
                reaction_path, product_path = self._generate_geometries_from_irc_output(irc_path, reaction)
                self.reactant_product_xyz_filepaths.append(reaction_path)
                self.reactant_product_xyz_filepaths.append(product_path)
                print('Reactant and product geometries generated successfully')
            except GaussianManagerError:
                print('no output.log file for {}'.format(irc_path))
                continue

    def _compile_all_geometries(self):
        """Hidden fxn which pulls all of the generated geometries from the file-tree and dumps them
            into a directory in experiment_dir
        """

        geometry_dir = self.experiment_dir + 'geometries/'
        self._makedir(geometry_dir)
        reaction_paths = self.opt_ts_xyz_filepaths + self.reactant_product_xyz_filepaths
        for path in reaction_paths:
            reaction_name, _ = os.path.basename(path).split('_')
            new_path = geometry_dir + reaction_name + '/'
            self._makedir(new_path)
            subprocess.run('cp {} {}'.format(path, new_path), shell=True, check=True)
        print('geometries compiled successfully')

    def _run_gaussian(self, reaction_path):
        """Submit all of the input files created by generate_inputs"""

        input_file_path = reaction_path + 'input.com'
        output_file_path = reaction_path + 'output.log'
        print('running calculation on {}...'.format(input_file_path))
        try:
            subprocess.run("module load gaussian/g09.e01; g09 < {} >& {}".format(input_file_path, output_file_path), shell=True, check=True)
        except subprocess.CalledProcessError as error:
            raise error

    def _generate_geometry_from_tsopt_output(self, path, reaction):
        """Hidden fxn for creating TS xyz files from a tsopt gaussian output log file.

            Args:
                path (str): The path to the output.log file
                reaction (str): The name of the reaction, used to name the xyz file appropriately

            Raises:
                GaussianManagerError: Raised if no output.log in path

            Returns:
                str: the path to the generated xyz file
        """

        output_file_path = path + 'output.log'

        #Check if output.log exists, if so parse the output file, if not raise GaussianManagerError
        try:
            transition_state = self._parse_log_file(output_file_path, 'tsopt')
        except GaussianManagerError as error:
            raise error

        #Define filename for transition state xyz file
        transition_state_reaction_path = path + reaction + '_transition-state.xyz'

        #Generate the xyz file in the experiment file tree, append to opt_ts_xyz_filepaths list
        self._generate_xyz_file(transition_state, transition_state_reaction_path)
        self.opt_ts_xyz_filepaths.append(transition_state_reaction_path)
        print('{} generated successfully'.format(transition_state_reaction_path))

        return transition_state_reaction_path

    def _generate_geometries_from_irc_output(self, path, reaction):
        """Hidden fxn for creating product and reactant xyz filse from an irc gaussian output file

            Args:
                path (str): the path to the irc output.log file
                reaction (str): the name of the reaction, used to name the xyz file

            Raises:
                GaussianManagerError: Raised if no output.log file in path
        """

        output_file_path = path + 'output.log'

        #Check if output.log exists, parse the file if so, raise error if not
        try:
            reactant, product = self._parse_log_file(output_file_path, 'irc')
        except GaussianManagerError as error:
            raise error

        #generate the xyz files for the reactants and products
        reactant_path = path + reaction + '_reactant.xyz'
        product_path = path + reaction + '_product.xyz'
        self._generate_xyz_file(reactant, reactant_path)
        self._generate_xyz_file(product, product_path)
        print('{} and {} generated successfully.'.format(reactant_path, product_path))

        return reactant_path, product_path

    def _create_input_files(self, xyz_filepaths, paths_dict, calculation_kws, multiplicity, overwrite=True):
        """Hidden fxn which creates input files for given xyz files, placing the input files at a
            given set of paths denoted by paths_dict.

            Args:
                xyz_filepaths (list): The list of xyz files that will be used to generate input files
                paths_dict (dict): The dictionary of where the input files should be placed
                calculation_kws (str): the string of gaussian keywords which denote what calc the input file is for
                multiplicity (str): the multiplicity of the input file molecule
                overwrite (bool, optional): Defaults to True. If input files exist in the given paths_dict already, they'll be overwritten

            Returns:
                dict: A dict containing the paths to the reaction folders, with keys in method_basis_reaction format
        """

        reaction_paths = {}
        #Loop through all of the specified transition state xyz files
        for xyz_path in xyz_filepaths:
            reaction_name = os.path.basename(xyz_path)[:-4].split('_')[0]

            #Loop through all of the method/basis/calc directories for a given calc
            for key, destination_path in paths_dict.items():
                method, basis = key.split('_')

                #Make the method/basis/calc/reaction directories
                reaction_dir = destination_path + reaction_name + '/'
                self._makedir(reaction_dir)
                reaction_paths[key + '_' + reaction_name] = reaction_dir

                with open(xyz_path, 'r') as file:
                    coordinates = file.readlines()[2:]

                #Stops algorithm from overwriting existing input files, if they exist.
                #Reaction_path is still added to reaction_paths dict, however
                if os.path.isfile(reaction_dir + 'input.com') and not overwrite:
                    continue

                with open(reaction_dir + 'input.com', 'w') as file:
                    file.write('# {}/{} {}\n\n'.format(method, basis, calculation_kws))
                    file.write(reaction_name + '\n\n')
                    file.write(multiplicity + '\n')
                    file.write(''.join(line for line in coordinates))
                    file.write('\n\n')

        return reaction_paths

    def _parse_log_file(self, path, calculation_type):
        """Parse through log file depending on which type of calculation was run and return
            the raw coordinates for the atom(s) optimized by the gaussian job

            Args:
                path (str): Path to the log file
                calculation_type (str): Either 'irc' or 'tsopt', defines which output file type is being parsed for the algorithm

            Raises:
                exceptions.GaussianManagerError: Raised if _sanitize_coordinates() is unable to find coordinates

            Returns:
                list (if calculation_type is 'tsopt'): list of lines containing the transition state coordinates
                tuple (if calculation_type is 'irc'): Tuple of lists of lines containing reactant and product coordinates, respectively
        """

        def _sanitize_coordinates(unsan_coords):
            """Pull out the sanitized xyz coordinates for given output file. Works by interating
                backwards through the file until it finds the first occurance of 'Distance Matrix'
                and 'Input Orientation' which denote end and start of the coordinates, respectively.
                For irc calculations the log file must be split into forward and reverse halves, but
                the algorithm works when this is done. IRC half files are passed to this method
                by _parse_log_files()

                Args:
                    unsan_coords (list): list of log file lines, if running on irc, then the list contains lines for only half the log file

                Raises:
                    exceptions.ParseError: raised if algorithm is unable to find the strings that bookend the coordinates

                Returns:
                    list: list of pure coordinates with atomic symbols, spaced appropriately for insertion into xyz file
            """

            atom_num_dict = {'1' : 'H',
                     '6': 'C',
                     '7 ': 'N',
                     '8' : 'O',
                     '9' : 'F',
                     '15': 'P',
                     '16': 'S',
                     '17': 'Cl',
                     '35': 'Br',
                     '53': 'I'
                    }

            end_idx = None
            for i, line in enumerate(reversed(unsan_coords)):
                #Catch the ending of coordinates
                if end_idx is None and 'Distance matrix (angstroms):' in line:
                    end_idx = i
                #Catch the beginning of the coords
                if 'Input orientation:' in line:
                    beginning_idx = i
                    break

            #Check to make sure coordinate chunk indices can be found
            if end_idx is None or beginning_idx is None:
                raise ParseError('Unable to find key strings for coordinates in output file: '
                                                      + path
                                                      + ' -- check to make sure gaussian created output.log successfully for reaction.')

            #Pull out from 'Input Orientation' to 'Distance Matrix'
            pruned_raw_coords = unsan_coords[-beginning_idx: -end_idx - 1]

            #Remove all additional info from coordinates to leave simply atomic symbol and xyz coordinates
            sanitized_coordinates = []
            for line in pruned_raw_coords:
                if "---------------" in line or "Coordinates" in line or "Number" in line:
                    continue
                #Remove the the space before atomic_num and the space between atomic_num and coordinates
                line = line[17:]
                line = line[0] + '                  ' + line[20:]
                #Swap out atomic_num for the element symbol
                for key, value in atom_num_dict.items():
                    if key == line[0]:
                        line = value + line[1:]
                        break
                sanitized_coordinates.append(line)
            return sanitized_coordinates

        if not os.path.isfile(path):
            raise OutputLogError('no output.log file for ' + path)

        with open(path, 'r') as file:
            lines = file.readlines()

        #IRC log files have to be split into halves in order to properly parse reactant & product coords
        if calculation_type == 'irc':
            for i, line in enumerate(lines):
                if ' Calculation of FORWARD path complete.' in line:
                    forward_path_idx = i
                    break
            #Pull out coordinates
            product_coords = _sanitize_coordinates(lines[:forward_path_idx + 1])
            reactant_coords = _sanitize_coordinates(lines[forward_path_idx + 1:])

            return reactant_coords, product_coords
            #Generate xyz file from coordinates

        #TSOPT log files only have 1 important geometry to look for, so can sanitize the entire file
        if calculation_type == 'tsopt':
            transition_state_coords = _sanitize_coordinates(lines)
            return transition_state_coords

    def _generate_xyz_file(self, coordinates, file_path, verbose=False):
        """Generates an xyz file at file_path with given coordinates

            Args:
                coordinates (list): list of lines describing coordinates
                file_path (str): path of where the xyz file should be created
        """

        molecule_type = os.path.basename(file_path)[:-4]
        with open(file_path, 'w') as file:
            #Naming the molecule: reaction_molecule-type e.g. F-CH3-OH_reactant
            file.write(str(len(coordinates)) + '\n' + molecule_type + '\n')
            file.write(''.join(line for line in coordinates))
        if verbose:
            print('{} file created successfully.'.format(molecule_type))

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

    def _construct_filesystem(self):
            """Hidden method which is called upon object instantiation which constructs the scaffold of
                the file system based on the methods and basis-sets chosen. This file system is further
                built upon by other GaussianManager class methods
            """

            # Construct root dir and folder for logging errors
            self._makedir(self.experiment_dir)
            #Construct method dirs
            tsopt_paths = {}
            irc_paths = {}
            for method in self.methods:
                method_path = self.experiment_dir + method + '/'
                self._makedir(method_path)
                for bs in self.basis_sets:
                    basis_path = method_path + bs + '/'
                    self._makedir(basis_path)
                    for calc in self.calculations:
                        calculation_path = basis_path + calc + '/'
                        self._makedir(calculation_path)
                        if calc == 'irc':
                            irc_paths[str(method) + '_' + str(bs)] = calculation_path
                        elif calc == 'tsopt':
                            tsopt_paths[str(method) + '_' + str(bs)] = calculation_path
            print('file system scaffold constructed.')
            return tsopt_paths, irc_paths