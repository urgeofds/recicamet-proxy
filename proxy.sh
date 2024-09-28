#!/bin/bash

# Define the path to your Python server script
SERVER_SCRIPT_PATH="/home/recicamet/proxy/server.py"
LOG_SERVER_PATH="/home/recicamet/proxy/log/server.log"

# Set up a cron job to run the server script at startup
SERVER_CRON_JOB="@reboot /usr/bin/python3 $SERVER_SCRIPT_PATH >> $LOG_SERVER_PATH 2>&1"

# Check if the cron job already exists
if crontab -l | grep -q "$SERVER_SCRIPT_PATH"; then
    echo "Cron job already exists."
else
    # Add the server cron job to crontab
    (crontab -l 2>/dev/null; echo "$SERVER_CRON_JOB") | crontab -
    echo "Server script $SERVER_SCRIPT_PATH will run automatically at startup."
fi
