#!/bin/bash

FILE_PATH=$1

if [ -f "$FILE_PATH" ]
then
  exit 0
elif [ -d "$FILE_PATH" ]
then
  exit 1
else
  exit 2
fi