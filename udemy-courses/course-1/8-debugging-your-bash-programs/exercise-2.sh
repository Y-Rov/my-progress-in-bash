#!/bin/bash -x

# This script is a modified version of the previous one (exercise-1.sh)
# It simply calls "ls" command three times despite the wrong path in the second "ls".

WRONG_PATH="/bla/not"
ls
ls $WRONG_PATH
ls /var