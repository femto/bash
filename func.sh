#!/bin/bash
VAR=9
foo ( ){
echo $VAR;
local VAR=0;
VAR=`expr $VAR + 1`
echo $VAR;
 bar() {
 echo $VAR;
 }

}

foo 3
foo 3
bar
echo $VAR