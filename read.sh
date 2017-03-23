#!/bin/bash
# simple file reading (non-binary) and displaying one line at a time
#\\\1 
echo "Enter a filename to read: "
read FILE
 
while read -r  SUPERHERO; do
	  echo "Superhero Name: $SUPERHERO"
  done < "$FILE"
File Was Read On: 2017年 3月22日 星期三 14时21分30秒 CST
