#!/bin/bash

while true
do
  echo -e "1. Show disk usage.\n2. Show system uptime."
  echo "3. Show the users logged into the system."
  read -p "What would you like to do? (Enter q to quit.) " OPERATION
  case "$OPERATION" in
    1)
      df
      ;;
    2)
      uptime
      ;;
    3)
      who
      ;;
    q)
      break
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
  echo
done
echo -e "Goodbye!\n"
exit 0