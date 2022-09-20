#!/bin/bash

MAIN=$1
CHECK=$2

function check_and_replace() {
  INPUT=$1
  SEARCHED=$2
  if [[ $INPUT == *$SEARCHED* ]];then
    echo "$SEARCHED is included in $INPUT string"
  else
    echo "There is no match between files"
  fi
}

check_and_replace "$MAIN" "$CHECK"

