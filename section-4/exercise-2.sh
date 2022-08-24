#!/bin/bash

# This script is a modified version of the previous one (exercise-1.sh).
# It renames files in the current directory based on the file extension.
# Firstly, it prompts the user for a file extension.
# Next, it asks the user what prefix to prepend to the file name(s).
# By default the prefix is the current date in YYYY­MM­DD format.
# Otherwise, whatever the user entered will be used as the prefix.

function rename_files() {
  shopt -s nullglob # enable nullglob
  local FILE_EXTENSION=$1
  local FILE_PREFIX=$2
  for FILE in *."${FILE_EXTENSION}"
  do
    if [ -n "${FILE_PREFIX}" ]
    then
      echo "Renaming ${FILE} to ${FILE_PREFIX}-${FILE}"
      mv $FILE "${FILE_PREFIX}-${FILE}"
    else
      echo "Renaming ${FILE} to $(date "+%Y%m%d")${FILE}"
      mv $FILE $(date "+%Y%m%d")${FILE}
    fi
  done
  shopt -u nullglob # disable nullglob
}

read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: " PREFIX
rename_files $EXTENSION $PREFIX