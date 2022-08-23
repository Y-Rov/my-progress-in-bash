#!/bin/bash

# This script displays a list of "CREATURES" to the screen.

CREATURES="man bear pig dog cat sheep"

for CREATURE in $CREATURES
do
  echo ${CREATURE}
done