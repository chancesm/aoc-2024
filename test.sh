#!/bin/bash

# Check if a folder name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <folder_name>"
  exit 1
fi

FOLDER_NAME=$1

# Check if the folder exists
if [ ! -d "$FOLDER_NAME" ]; then
  echo "Folder '$FOLDER_NAME' does not exist."
  exit 1
fi

# Change to the specified folder
echo "Changing to folder '$FOLDER_NAME'"
cd "$FOLDER_NAME" || { echo "Failed to change directory to '$FOLDER_NAME'"; exit 1; }

# Log the current directory
echo "Current directory: $(pwd)"

# Run 'go test' in the folder
echo "Running 'go test' in folder '$FOLDER_NAME'"
go test ./... || { echo "'go test' command failed"; exit 1; }

# Log success
echo "'go test' command executed successfully"