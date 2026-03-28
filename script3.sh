#!/bin/bash

echo "===== DIRECTORY AUDIT REPORT ====="

# List of directories
DIRS="/etc /var/log /home /usr/bin /tmp"

# Loop through directories
for DIR in $DIRS
do
    if [ -d "$DIR" ]
    then
        PERM=$(ls -ld "$DIR" | awk '{print $1}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR -> Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "=================================="
