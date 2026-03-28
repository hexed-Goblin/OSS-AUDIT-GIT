#!/bin/bash

# Script 1: System Identity Report
# Author: Suprio | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Suprio Bhowmick"
SOFTWARE_CHOICE="Git"

# --- System Info ---
DISTRO=$(uname -o)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# --- Display ---
echo "======================================="
echo " Open Source Audit – $STUDENT_NAME"
echo " Software: $SOFTWARE_CHOICE"
echo "======================================="
echo "OS          : $DISTRO"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME_DIR"
echo "Uptime      : $UPTIME"
echo "Date & Time : $CURRENT_DATE"
echo "License     : GNU General Public License (GPL)"
echo "======================================="
