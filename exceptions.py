class GaussianManagerError(Exception):
    pass

class GaussianInputError(GaussianManagerError):
    pass

class GaussianCovergeError(GaussianManagerError):
    pass

class GaussianBasisError(GaussianManagerError):
    pass


class GaussianProximityError(GaussianManagerError):
    pass

class GaussianUnknownError(GaussianManagerError):
    pass