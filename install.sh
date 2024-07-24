#!/bin/bash
# Install frontend dependencies
cd /var/www/html/todo-app
npm install

# Install backend dependencies
cd /var/www/html/Todo
pip install -r requirements.txt
pip install setuptools
