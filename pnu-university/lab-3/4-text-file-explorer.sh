#!/bin/bash
if [ -z "$1" ]
then
  echo "Nothing to do"
elif [[ $1 == *.txt ]]
then
  cat $1
fi
