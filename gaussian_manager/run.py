"""Main user interface for GM, used as a script to submit a list of calcs to run on a list of mols"""

from . import manager, utils, calculations, exceptions
import os
from shutil import rmtree
import sys
import time
from typing import List, Type


def run(mols: List, out: str, calcs: List, multi: str):
    """
    Main method of gaussian_manager interface for creating GM objects and running calculations
    on provided list of mols.

    Args:
        mols (list): The list of mol filepaths to run calcs on
        out (str): Root dir where GM will add files and mol dirs to
        calcs (list): List of calculation objects to run on provided mols
        multi (str): Multiplicity of mols, currently all mols must have the same charge/multiplicity
    """

    out = utils.sanitize_path(out, add_slash=True)
    exp_log = out + 'log.txt'
    failed_dir = out + 'failed/'
    utils.make_dir(failed_dir)

    # Loop through mols, apply the same calcs for every mol
    for mol in mols:
        m_start = time.time()
        mol_name, mol_dir, geom_dir, mol_log = _get_mol_specs(mol, out)
        utils.make_dir(geom_dir)

        # Loop through calculation objects created from user/default specifications
        for calc in calcs:

            c_start = time.time()
            mol_in, mol_out = _get_in_out(calc, geom_dir, mol)
            gm = _get_gm(out, mol_name, mol_in, mol_out, multi, calc)
            try:
                gm.run_manager()

            # Raised if GM cannot solve any errors thrown by gaussian
            except exceptions.GaussianManagerError as e:

                msg = 'encountered ({}) running {} on {}'.format(e.args[0], calc.name, mol_name)

                # Log to both the mol and main exp dirs
                utils.log_error(mol_log, msg, verbose=True)
                utils.log_error(exp_log, msg, verbose=False)

                # Copy failed mol into seperate directory
                utils.copy_file(mol_dir, failed_dir)

                # If the calc is a ts opt, stop the suite, since irc's depend on ts opts
                if calc.name == 'ts':
                        break

            finally:
                # Log time of calc to mol dir
                _record_time(c_start, mol_name, mol_log, calc)

        # Log time of entire mol calc to exp dir
        _record_time(m_start, mol_name, exp_log)

    # Remove failed molecules from the exp dir, keep them in the failed dir
    try:
        superlist, sublist = _get_failed_dirlists(out)
    except exceptions.GaussianManagerError:  # Cannot delete failed mols, so exit GM
        sys.exit()
    dirs_in_both = set(superlist) & set(sublist)
    for d in dirs_in_both:
        rmtree(os.path.join(out, d))


def _get_in_out(calc, geom_dir, mol):
    """Determines where the in/output mol files live/should live based on calc"""

    mol_name = os.path.basename(mol)
    mol_in = geom_dir + utils.insert_suffix(mol_name, '_ts')
    mol_out = None

    if calc.name == 'ts':
        mol_in = utils.copy_file(mol, mol_in)
        mol_out = mol_in
    elif calc.name == 'qst3' or calc.name == 'qst2':
        mol_in = geom_dir
        mol_out = geom_dir + utils.insert_suffix(mol_name, '_ts')
    elif calc.name == 'gopt_reverse':
        mol_in = geom_dir + utils.insert_suffix(mol_name, '_reactant')
        mol_out = mol_in
    elif calc.name == 'gopt_forward':
        mol_in = geom_dir + utils.insert_suffix(mol_name, '_product')
        mol_out = mol_in

    elif calc.name == 'irc_reverse':
        mol_out = geom_dir + utils.insert_suffix(mol_name, '_reactant')
    elif calc.name == 'irc_forward':
        mol_out = geom_dir + utils.insert_suffix(mol_name, '_product')

    if mol_in is None or mol_out is None:
        raise exceptions.GaussianManagerError('Unknown calc kw, cannot find where to put output molecule')

    return mol_in, mol_out


def _get_gm(
        out: str,
        mol_name: str,
        mol_in: str,
        mol_out: str,
        multi: str,
        calc: calculations.Calculation) -> Type[manager.GaussianManager]:
    """Calls GM factory method"""

    gm_dir = out + '{}/{}/{}/'.format(mol_name, calc.method, calc.name)
    gm = manager.GaussianManager.factory(gm_dir, mol_in, mol_out, multi, calc)

    return gm


def _get_mol_specs(mol, out):
    """Gives basis variable outputs based on provided mol filepath"""

    mol_name = utils.get_file_name(mol)
    mol_dir = out + '{}/'.format(mol_name)
    geom_dir = mol_dir + 'geometries/'
    mol_log = mol_dir + 'log.txt'

    return mol_name, mol_dir, geom_dir, mol_log


def _record_time(start, mol_name, log, calc=None):
    """Logs the time of a calc

        Args:
            start (float): Start time in seconds
            mol_name (str)
            log (str)
            calc (Bool)
    """

    mi, s = divmod(int(time.time() - start), 60)
    h, mi = divmod(mi, 60)

    # Calc is None if we're logging how long a mol took
    if calc is None:
        msg = 'total calc time for {} was {}:{}:{}'.format(mol_name, h, mi, s)
    else:
        msg = '{} {} on {} took {}:{}:{}'.format(calc.method, calc.name, mol_name, h, mi, s)

    utils.log_error(log, msg, verbose=True)


def _get_failed_dirlists(path: str):

    failed_superlist, failed_sublist = None, None
    for i, (dirname, dirs, files) in enumerate(os.walk(path)):
        if i == 0:
            failed_superlist = [d for d in dirs if 'failed' not in d]
        if 'failed' in dirname:
            failed_sublist = [d for d in dirs]
            break

    if failed_superlist is None or failed_sublist is None:
        raise exceptions.GaussianManagerError('unable to ')
    return failed_superlist, failed_sublist
