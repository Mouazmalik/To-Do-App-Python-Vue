#!/bin/bash
# Navigate to the project directory and apply migrations
cd /var/www/html/Todo
python3 manage.py migrate
