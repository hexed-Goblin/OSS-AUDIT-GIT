#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Suprio Bhowmick
# In this script, I tried to understand how Linux checks whether a software is installed.
# --- Choosing the package ---
PACKAGE="git"
echo "===== FOSS PACKAGE INSPECTOR ====="
# --- Checking installation ---
# This part checks whether Git is present in the system using dpkg
if dpkg -l | grep -q "$PACKAGE"
then
    echo "$PACKAGE is installed"
    # Displaying version helped me verify that Git is properly working
    git --version
    # Here I am extracting basic details like version and description
    dpkg -s $PACKAGE | grep -E "Version|Description"
else
    echo "$PACKAGE is NOT installed"
fi
# --- Understanding case statement ---
# I used case to print a short meaning of different open-source tools
case $PACKAGE in
    git)
        echo "Git: It helps developers track changes and collaborate on code."
        ;;
    apache2)
        echo "Apache: Used to host websites and web applications."
        ;;
    mysql)
        echo "MySQL: A database system used to store structured data."
        ;;
    vlc)
        echo "VLC: A media player that supports multiple formats."
        ;;
    *)
        echo "Unknown package"
        ;;
esac
echo "=================================="
