#!/bin/bash

function log_something() {
  local MESSAGE=$@
  echo "$MESSAGE"
  logger -i -t randomly -p user.info "$MESSAGE" 
}

log_something "Random number: $RANDOM"
log_something "Random number: $RANDOM"
log_something "Random number: $RANDOM"
exit 0