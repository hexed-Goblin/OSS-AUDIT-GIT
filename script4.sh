#!/bin/bash
# Script 4: Log File Analyzer
# Author: Suprio Bhowmick
# This script analyzes a log file to count occurrences of a keyword
# and displays the last few matching lines.
# --- Input Handling ---
LOGFILE=$1                 # first argument: log file name
KEYWORD=${2:-error}        # second argument: keyword (default = "error")
COUNT=0                    # initialize counter
echo "===== LOG FILE ANALYZER ====="
# --- Check if file argument is provided ---
if [ -z "$LOGFILE" ]
then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    exit 1
fi
# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]
then
    echo "Error: File not found"
    exit 1
fi
# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]
then
    echo "File is empty"
    exit 1
fi
# --- Reading file line by line ---
# Using while loop to process each line safely
while IFS= read -r LINE
do
    # Check if the current line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))   # increment counter
    fi
done < "$LOGFILE"
# --- Display total count ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
# --- Display last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "=================================="
