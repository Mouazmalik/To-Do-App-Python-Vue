#!/bin/bash
# Update package list and install dependencies
apt-get update -y
apt-get install -y python3-pip
pip3 install -r /var/www/html/Todo/requirements.txt
