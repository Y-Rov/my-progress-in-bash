#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see? " LINE_NUM
LINE_INDEX=1
while read LINE
do
  if [ $LINE_INDEX -le $LINE_NUM ]
  then
    echo $LINE
  else
    break
  fi
  ((LINE_INDEX++))
done < /etc/passwd
exit 0