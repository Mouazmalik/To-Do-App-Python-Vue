#!/bin/bash
# Navigate to the backend app directory
cd /var/www/html/Todo
# Install dependencies
pip install -r requirements.txt
# Apply migrations
python manage.py migrate
