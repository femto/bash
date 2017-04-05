#!/bin/bash

while IFS='e' read -r FILENAME; do
  echo $FILENAME
  echo "---------"
done < if.sh