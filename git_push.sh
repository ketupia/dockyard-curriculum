#!/bin/zsh

# Check for argument provided as commit message
if [[ -z "$@" ]]; then
  # No argument, prompt for message
  read -p "Enter commit message: " message
  # Exit if user enters nothing and presses enter
  if [[ -z "$message" ]]; then
    echo "Error: Please provide a commit message."
    exit 1
  fi
else
  # Use the first argument as the message
  message="$1"
fi

# Add all changes
git add .

# Commit with the provided message
git commit -m "$message"

# Push to remote repository
git push

echo "Pushed code with message: '$message'"
