#!/bin/bash

# Check for argument provided as commit message
if [ $# -eq 0 ]; then
  # No argument, prompt for message
  read -p "Enter commit message: " message
  # Exit if user enters nothing and presses enter
  if [ -z "$message" ]; then
    echo "Error: Please provide a commit message."
    exit 1
  fi
else
  # Use the argument as the message
  message="$1"
fi

git add .
git commit -m "$message"
git push

echo "Pushed code with message: '$message'"
