#!/usr/bin/env bash

# Navigate to the current directory of the terminal
cd "$(dirname "$(readlink -f "$0")")" || exit

# Check if the current directory is a Git repository
if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    # Get the current branch name
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo " $branch"
    else
        echo " detached"
    fi
else
    echo ""
fi
