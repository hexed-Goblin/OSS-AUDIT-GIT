#!/bin/bash

echo "===== SYSTEM IDENTITY REPORT ====="

echo "OS: $(uname -o)"
echo "Kernel: $(uname -r)"
echo "User: $(whoami)"
echo "Home: $HOME"
echo "Uptime: $(uptime -p)"
echo "Date & Time: $(date)"

echo "License: GNU General Public License (GPL)"

echo "=================================="
