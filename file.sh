#!/bin/bash
# demo of reading and writing to a file using a file descriptor
 
echo "Enter a file name to read: "
read FILE
 
exec 5<>$FILE
 
while read -r SUPERHERO; do
	  echo "Superhero Name: $SUPERHERO"
  done <&5
 while read -r SUPERHERO; do
 	  echo "Superhero Name: $SUPERHERO"
   done <&5
  echo "File Was Read On: `date`" >> $FILE
   
  exec 5>&-

