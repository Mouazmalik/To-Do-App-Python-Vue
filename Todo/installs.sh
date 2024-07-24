#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package list and install dependencies
apt-get update -y
apt-get install -y python3-pip

# Install Python packages from requirements file
pip3 install -r /var/www/html/Todo/requirements.txt

# Install setuptools
pip3 install setuptools

