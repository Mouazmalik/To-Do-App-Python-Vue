#!/bin/bash
# Check if the server is running
curl -f http://54.87.180.225:8000 || exit 1
