#!/usr/bin/env bash

PREFIX=$1
NEW_PREFIX=$2
for file in "$PREFIX"*; do
  LENGTH=${#PREFIX}+1
  FILE_NAME=${file:$LENGTH}
  echo "$NEW_PREFIX-$FILE_NAME"
done
