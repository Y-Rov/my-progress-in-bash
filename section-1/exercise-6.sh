#!/bin/bash

# This script prompts the user for a name of a file or directory.
# It reports if it is a regular file, a directory, or other type of file.
# Also performs an ls command against the file or directory with the long listing option. 

read -p "Enter the file path: " FILE_PATH

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