#!/bin/bash
# Validate that the backend is running
curl -f http://18-234-31-124:8000 || exit 1

# Validate that the frontend is running (if applicable)
curl -f http://18-234-31-124 || exit 1
