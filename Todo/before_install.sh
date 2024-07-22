#!/bin/bash
# Stop the current Django application
if pgrep -f manage.py; then
    pkill -f manage.py
fi
# Navigate to the backend app directory
cd /var/www/html/Todo
# Remove existing files
rm -rf *
