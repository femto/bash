#!/bin/bash

#trap 'exit1' EXIT
echo {3?"x"}

VAR=3
VAR=${VAR=5}
echo $VAR

exit1() {
echo $?
echo $1

  echo "exiting"
  exit 3
}

exit 300