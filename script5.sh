#!/bin/bash

echo "===== OPEN SOURCE MANIFESTO GENERATOR ====="

# Take user input
read -p "Enter your name: " NAME
read -p "Why do you like open source? " REASON
read -p "Your favorite tool (e.g., Git): " TOOL

# Create filename with date
FILENAME="${NAME}_manifesto_$(date +%Y%m%d).txt"

# Generate content
echo "Hello, I am $NAME." > $FILENAME
echo "I believe in open source because $REASON." >> $FILENAME
echo "My favorite tool is $TOOL, which empowers collaboration and innovation." >> $FILENAME

echo "Manifesto saved in $FILENAME"

echo "==========================================="

