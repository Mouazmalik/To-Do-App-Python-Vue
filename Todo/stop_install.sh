#!/bin/bash
# Stop the current Django application
if pgrep -f manage.py; then
    pkill -f manage.py
fi
