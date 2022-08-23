#!/bin/bash

# This script is a modified version of the previous one (exercise-7.sh).
# It accepts an unlimited number of files and directories as arguments. 
# In for loop it reports if it is a regular file, a directory, or other type of file.
# It also performs an ls command against the file or directory with the long listing option. 

FILE_PATHES=$@

for FILE_PATH in $FILE_PATHES
do
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
  echo -e
done