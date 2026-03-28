#!/bin/bash

echo "===== LOG FILE ANALYZER ====="

# Check if file is provided
if [ -z "$1" ]
then
    echo "Usage: ./script4.sh <logfile>"
    exit 1
fi

FILE=$1
COUNT=0

# Check if file exists
if [ ! -f "$FILE" ]
then
    echo "File does not exist"
    exit 1
fi

# Read file line by line
while read line
do
    if echo "$line" | grep -i "error" > /dev/null
    then
        COUNT=$((COUNT+1))
    fi
done < "$FILE"

echo "Total ERROR lines: $COUNT"

echo "Last 5 ERROR lines:"
grep -i "error" "$FILE" | tail -5

echo "================================"
