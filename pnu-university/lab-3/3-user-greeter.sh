#!/bin/bash
read -p "Enter your name, please: " USER_NAME
if [ -z "$USER_NAME" ]
then
  echo "Hi, anonymous user!"
else
  echo "Hi, ${USER_NAME}!"
fi
