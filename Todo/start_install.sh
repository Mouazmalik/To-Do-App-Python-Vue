#!/bin/bash
# Navigate to the backend app directory
cd /var/www/html/Todo
# Start the Django application
nohup python3 manage.py runserver 0.0.0.0:8000 &
