#!/bin/bash

# This script displays the number of files in the present working directory.

function file_count() {
  local FILE_COUNT=$(ls | wc -l)
  echo "In current directory: ${FILE_COUNT} file(s)"
}
file_count