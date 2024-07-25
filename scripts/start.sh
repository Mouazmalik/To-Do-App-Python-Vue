#!/bin/bash
# Build the frontend
cd /var/www/html/todo-app
npm run build

# Start the frontend server
npm run dev -- --host 0.0.0.0:5173 &

# Apply backend migrations
cd /var/www/html/Todo
python3 manage.py makemigrations
python3 manage.py migrate

