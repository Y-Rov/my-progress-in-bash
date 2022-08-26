#!/bin/bash -ex

# This script simply calls "ls" command three times.
# However the second "ls" triggers an error, so the third "ls" should not be executed.

WRONG_PATH="/bla/not"
ls
ls $WRONG_PATH
ls /var