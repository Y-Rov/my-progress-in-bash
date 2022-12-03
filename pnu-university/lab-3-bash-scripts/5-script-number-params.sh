#!/bin/bash
if [ -z "$1" ]
then
  echo "Nothing to do"
elif [ -z "$2" ]
then
  echo $1
  echo "Only one parameter detected"
else
  ODD_FLAG=0
  SUM=0
  MUL=1
  for NUMBER in $@
  do
    if [ $ODD_FLAG -eq 0 ]
    then
      SUM=$(($SUM+$NUMBER))
      ODD_FLAG=1
    elif [ $ODD_FLAG -eq 1 ]
    then
      MUL=$(($MUL*$NUMBER))
      ODD_FLAG=0
    fi
  done
  echo "Sum of parameter values with odd numbers = ${SUM}"
  echo "The product of parameter values with even numbers = ${MUL}"
fi
