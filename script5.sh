#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Suprio Bhowmick

echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose Paragraph ---
PARA="On $DATE, I reflect on open source. I regularly use $TOOL, which represents collaboration and innovation. For me, freedom means $FREEDOM. I believe in building and sharing $BUILD with the community so that knowledge remains open and accessible to everyone."

# --- Write to File ---
echo "$PARA" > "$OUTPUT"

# --- Alias concept (example comment) ---
# alias ll='ls -la'   # This creates a shortcut command

# --- Output ---
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
