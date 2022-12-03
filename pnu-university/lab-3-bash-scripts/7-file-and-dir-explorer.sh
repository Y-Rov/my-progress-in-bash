#!/bin/bash
function check_if_dir_exists() {
  ls $1 1>/dev/null 2>/dev/null
  if [ "$?" -ne 0 ]
  then
    echo "No such directory"
    exit 1
  fi  
}

if [ -z $1 ]
then
  echo "Nothing to do"
  exit 1 
fi

if [ -z $2 ]
then
  if [ "$1" == "dir" ]
  then
    ls -dl */
  elif [ "$1" == "file" ]
  then
    ls -al | grep -v '^d'
  else
    check_if_dir_exists $1
    ls -l $1
  fi
else
  check_if_dir_exists $2 
  if [ "$1" == "dir" ]
  then
    ls -dl "$2"*/
  elif [ "$1" == "file" ]
  then
    ls -al $2 | grep -v '^d'
  else
    ls -l $2
  fi
  exit 0
fi
