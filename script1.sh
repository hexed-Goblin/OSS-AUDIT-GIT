#!/bin/bash
# Script 1: System Identity Report
# Author: Suprio Bhowmick
# This script is like a small welcome screen for the Linux system.
# It helped me understand how to fetch basic system details using simple commands.
# --- Personal Details ---
STUDENT_NAME="Suprio Bhowmick"     # storing my name
SOFTWARE_CHOICE="Git"              # the tool I am focusing on in this project
# --- Fetching System Information ---
# Here I am using basic Linux commands to extract system-level details
DISTRO=$(uname -o)                 # tells me what OS I am using
KERNEL=$(uname -r)                 # kernel version (core of OS)
USER_NAME=$(whoami)                # current logged-in user
HOME_DIR=$HOME                     # my home directory path
UPTIME=$(uptime -p)                # how long system has been running
CURRENT_DATE=$(date)               # current date and time
# --- Display Section ---
# Just formatting the output neatly so it looks like a proper report
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
# Mentioning license as required in the assignment
echo "License     : GNU General Public License (GPL)"
echo "======================================="
