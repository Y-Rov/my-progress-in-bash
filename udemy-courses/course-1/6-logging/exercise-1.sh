#!/bin/bash

# This script displays one random number to the screen 
# It also generates a syslog message with that random number 
# with the "user" facility and the "info" severity.

RANDOM_NUM=$RANDOM
echo $RANDOM_NUM
logger -p user.info $RANDOM_NUM
exit 0