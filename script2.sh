#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Suprio Bhowmick

# --- Variable ---
PACKAGE="git"

echo "===== FOSS PACKAGE INSPECTOR ====="

# --- Check if installed ---
if dpkg -l | grep -q "$PACKAGE"
then
    echo "$PACKAGE is installed"

    # Show version
    git --version

    # Show package info
    dpkg -s $PACKAGE | grep -E "Version|Description"

else
    echo "$PACKAGE is NOT installed"
fi

# --- Case Statement ---
case $PACKAGE in
    git)
        echo "Git: Distributed version control system for collaboration."
        ;;
    apache2)
        echo "Apache: Web server used to host websites."
        ;;
    mysql)
        echo "MySQL: Open source relational database system."
        ;;
    vlc)
        echo "VLC: Open source media player."
        ;;
    *)
        echo "Unknown package"
        ;;
esac

echo "=================================="
