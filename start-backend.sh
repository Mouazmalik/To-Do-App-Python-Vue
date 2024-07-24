#!/bin/bash
# Start the backend server
cd /var/www/html/Todo
# Adjust the following command to match your server start command
nohup python3 manage.py runserver 0.0.0.0:8000 &
