#!/bin/bash

# This script is a modified version of the previous one (exercise-6.sh).
# It accepts the file or directory name as an argument instead of prompting the user to enter it. 
# It reports if it is a regular file, a directory, or other type of file.
# Also performs an ls command against the file or directory with the long listing option.

FILE_PATH=$1

if [ -f "$FILE_PATH" ]
then
	echo "This is a regular file."
elif [ -d "$FILE_PATH" ]
then
  echo "This is a directory."
else
  echo "This is some other type of file."
fi

ls -l ${FILE_PATH}