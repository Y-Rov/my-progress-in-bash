#!/bin/bash

# This script loops through the /etc/passwd file one line at a time.

LINE_NUM=1

while read LINE
do
  echo "${LINE_NUM}: $LINE"
  ((LINE_NUM++))
done < /etc/passwd
exit 0