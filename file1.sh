#!/BIN/BASH
# DEMO OF READING AND WRITING TO A FILE USING A FILE DESCRIPTOR
 
ECHO "ENTER A FILE NAME TO READ: "
READ FILE
 
EXEC 5<>$FILE
 
WHILE READ -R SUPERHERO; DO
	  ECHO "SUPERHERO NAME: $SUPERHERO"
  DONE <&5
 WHILE READ -R SUPERHERO; DO
 	  ECHO "SUPERHERO NAME: $SUPERHERO"
   DONE <&5
#  ECHO "FILE WAS READ ON: `DATE`" >&1
   
  EXEC 5>&-

M
N
ECHO DONE