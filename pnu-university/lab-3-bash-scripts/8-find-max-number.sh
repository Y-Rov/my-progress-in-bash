#!/bin/bash
function find_max() {
  local MAX_NUMBER=$1
  while [ ! -z "$1" ]
  do
    if [ "$MAX_NUMBER" -lt $1 ]
    then
      MAX_NUMBER=$1
    fi
    shift
  done
  echo "$MAX_NUMBER"
}

if [ -z "$1" ]
then
  echo "Nothing to do"
  exit 1
fi
MAX=$(find_max $@)
echo $MAX
