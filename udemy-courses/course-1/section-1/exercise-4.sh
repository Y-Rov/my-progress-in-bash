#!/bin/bash

# This script checks if the file "/etc/shadow" exists and if it is editable.

FILE_PATH="/etc/shadow"

if [ -e "${FILE_PATH}" ]
then
  echo "Shadow passwords are enabled."

  if [ -w "${FILE_PATH}" ]
  then
    echo "You have permissions to edit ${FILE_PATH}."
  else
  echo "You do NOT have permissions to edit ${FILE_PATH}."
  fi
fi