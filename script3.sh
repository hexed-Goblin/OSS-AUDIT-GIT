#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Suprio Bhowmick
# This script inspects key system directories to understand their permissions,
# ownership, and disk usage. It also checks for the presence of Git configuration.
# --- Directory List ---
# Array of commonly used system directories selected for analysis
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
# --- Directory Iteration ---
echo "===== DIRECTORY AUDIT REPORT ====="
echo "----------------------------------"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        # permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

        # size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR -> Permissions: $PERMS | Owner: $OWNER | Group: $GROUP | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done
# --- Git Configuration Check ---
echo "----------------------------------"

# --- Check Git config directory ---
CONFIG_DIR="$HOME/.gitconfig"

if [ -f "$CONFIG_DIR" ]
then
    PERMS=$(ls -l "$CONFIG_DIR" | awk '{print $1}')
    echo "Git config file found: $CONFIG_DIR"
    echo "Permissions: $PERMS"
else
    echo "Git config file not found"
fi

echo "=================================="
