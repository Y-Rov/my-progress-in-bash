#!/bin/bash

# This script dumps the local 'opencart' database
# and makes a compression copy of it

function create_sql_dump() {
  read -p "Enter your MySQL username: " USERNAME
  mysqldump -u $USERNAME -p opencart > $BACKUP_DUMP_PATH
  if [ $? == 0 ]
  then
    echo 'Your opencart SQL dump was successfully created!'
  else
    echo 'Something went wrong during the dumping process. Check your entered credentials and try again!'
    exit 1
  fi
}

function create_zip_for_sql_dump() {
  zip $BACKUP_ZIP_PATH $BACKUP_DUMP_PATH
  if [ $? == 0 ]; then
    echo 'Your opencart backup was successfully compressed!'
  else
    echo 'Something went wrong during the compression process!'
    exit 1
  fi
}

BACKUP_DUMP_PATH=$1/opencart-dump-$(date +%d-%m-%Y_%H-%M-%S).sql
BACKUP_ZIP_PATH=$1/opencart-dump-$(date +%d-%m-%Y_%H-%M-%S).zip
create_sql_dump
create_zip_for_sql_dump
exit 0
