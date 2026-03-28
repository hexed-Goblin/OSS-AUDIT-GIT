#!/bin/bash

# Script 4: Log File Analyzer
# Author: Suprio Bhowmick

LOGFILE=$1
KEYWORD=${2:-error}
COUNT=0

echo "===== LOG FILE ANALYZER ====="

# Check file provided
if [ -z "$LOGFILE" ]
then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    exit 1
fi

# Check file exists
if [ ! -f "$LOGFILE" ]
then
    echo "Error: File $LOGFILE not found"
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]
then
    echo "File is empty"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=================================="
