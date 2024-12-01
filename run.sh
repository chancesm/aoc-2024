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
cd "$FOLDER_NAME" || exit

# Run 'go run' in the folder
go run .