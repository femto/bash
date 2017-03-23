#!/bin/bash
# simple file reading (non-binary) and displaying one line at a time
#\\\1 
echo "Enter a filename to read: "
read FILE
 
while read -r  SUPERHERO; do
	  echo "Superhero Name: $SUPERHERO"
  done < "$FILE"
