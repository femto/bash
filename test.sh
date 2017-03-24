#!/bin/bash
trap 'echo " - Please Press Q to Exit.."' SIGINT SIGTERM SIGTSTP

while [ 1 ];do
./tesz.sh
done