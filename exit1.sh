#!/bin/bash

#trap 'exit1' EXIT
echo {3?"x"}

exit1() {
echo $?
echo $1

  echo "exiting"
  exit 3
}

exit 300