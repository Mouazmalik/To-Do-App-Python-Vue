#!/bin/bash
# Build the frontend
cd /var/www/html/todo-app
npm run build

# Migrate the backend
cd /var/www/html/Todo
python3 manage.py makemigrations
python3 manage.py migrate
