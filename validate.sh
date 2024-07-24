#!/bin/bash
# Validate that the backend is running
curl -f http://localhost:8000 || exit 1

# Validate that the frontend is running (if applicable)
curl -f http://localhost || exit 1
