#!/bin/bash

# This script executes the command "cat /etc/shadow".
# If the command returns a 0 exit status it reports about success and exits with a 0 exit status.
# If the command returns a non­zero exit status report about fail and exits with a 1 exit status. 

cat /etc/shadow

if [ "$?" -eq 0 ]
then
  echo "Command succeeded"
  exit 0
else
  echo "Command failed"
  exit 1
fi