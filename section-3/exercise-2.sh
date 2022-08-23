#!/bin/bash

# This script is a modified version of the previous one (exercise-1.sh).
# It displays the number of files in directories that are passed to the "file_count" function.

function file_count() {
  local DIRECTORY=$1
  local FILE_COUNT=$(ls ${DIRECTORY} | wc -l)
  echo -e "${DIRECTORY}:\n${FILE_COUNT}"
}

DIRECTORIES="/etc /var /usr/bin"
for DIRECTORY in ${DIRECTORIES}
do
  file_count $DIRECTORY
done
exit 0