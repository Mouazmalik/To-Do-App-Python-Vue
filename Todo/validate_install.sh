#!/bin/bash
# Check if the server is running
curl -f http://localhost:8000 || exit 1
