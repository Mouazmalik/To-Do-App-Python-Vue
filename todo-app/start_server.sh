#!/bin/bash

# Navigate to the app directory
cd /var/www/html/todo-app

# Install dependencies
npm install

# Build the application
npm run build

# Start the application
npm run preview
