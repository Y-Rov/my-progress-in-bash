#!/bin/bash

# This script renames all files in the current directory that end in ".jpg"
# to begin with today's date in the following format: YYYY­MM­DDsome-name.jpg  

function rename_images() {
  shopt -s nullglob # enable nullglob
  for IMAGE in *.jpg
  do
    echo "Renaming ${IMAGE} to $(date "+%Y%m%d")${IMAGE}"
    mv $IMAGE $(date "+%Y%m%d")${IMAGE}
  done
  shopt -u nullglob # disable nullglob
}

rename_images