#!/bin/bash

echo "===== GIT PACKAGE INSPECTOR ====="

# Check if git is installed
if command -v git > /dev/null
then
    echo "Git is installed"
    git --version

    # case statement (important)
    case "git" in
        git)
            echo "Git follows open-source philosophy: collaboration and version control freedom."
            ;;
        *)
            echo "Unknown package"
            ;;
    esac
else
    echo "Git is not installed"
fi

echo "================================="
