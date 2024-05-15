#!/bin/bash

# Define the output directory and file
OUTPUT_DIR="/home/oepilcore/user_reports"
LOG_FILE="${OUTPUT_DIR}/report_generation.log"

# Ensure the output directory exists
mkdir -p $OUTPUT_DIR

# Run the GAM command and log success or failure
if gam report users todrive; then
    echo "$(date +\%F\ \%T) - User report generated successfully" | tee -a $LOG_FILE
else
    echo "$(date +\%F\ \%T) - Failed to generate user report" | tee -a $LOG_FILE
fi
