#!/bin/bash

# Check if the application is running
curl -I localhost:5173 | grep "200 OK"

if [ $? -ne 0 ]; then
  echo "Application is not running"
  exit 1
fi
