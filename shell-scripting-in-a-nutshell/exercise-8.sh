#!/bin/bash

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