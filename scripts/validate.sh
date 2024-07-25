#!/bin/bash
# Validate that the backend is running
curl -f http://54.221.102.69:8000 || exit 1

# Validate that the frontend is running (if applicable)
curl -f http://54.221.102.69:5173 || exit 1
