#!/bin/bash

# Check if a folder name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <new_folder_name>"
  exit 1
fi

NEW_FOLDER_NAME=$1
TEMPLATE_FOLDER="template"

# Check if the template folder exists
if [ ! -d "$TEMPLATE_FOLDER" ]; then
  echo "Template folder '$TEMPLATE_FOLDER' does not exist."
  exit 1
fi

# Copy the template folder to the new folder name
echo "Copying template folder to '$NEW_FOLDER_NAME'"
cp -r "$TEMPLATE_FOLDER" "$NEW_FOLDER_NAME" || { echo "Failed to copy template folder"; exit 1; }

# Log success
echo "Template folder copied to '$NEW_FOLDER_NAME' successfully"
