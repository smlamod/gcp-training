#!/usr/bin/env python3
from setuptools import setup, find_packages

# pip3 freeze > requirements.txt

with open("README.md", 'r') as f:
    long_description = f.read()

with open("requirements.txt", 'r') as f:
    requirements = f.read().splitlines()

setup(
    name='gcp-training',
    version='0.0',
    description='gcp training sample ',
    author='smlamod',
    author_email='shawn.lamod@gmail.com',
    packages=find_packages(),
    include_package_data=True,
    install_requires=requirements
)