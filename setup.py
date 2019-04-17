#!/usr/bin/env python
from setuptools import setup, find_packages

setup(
    name='GaussianManager',
    version='1.0.0',
    packages=find_packages(),
    author='Riley Jackson',
    author_email='rjjackson22@gmail.com',
    description='Package for managing Gaussian09 calculations, allowing for automation of transition state searching',
    install_requires=['numpy', 'matplotlib'],
    entry_points={
        'console_scripts': ['gausman = gaussian_manager.main:main']}
)
