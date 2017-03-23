#!/bin/bash
# subshell-test.sh

#

echo " \$BASH_SUBSHELL outside subshell       = $BASH_SUBSHELL"           # 0
echo $$
echo $BASHPID
while [ 1 ]
do
(echo $$;echo $BASHPID;echo $BASHPID;ruby test.rb;ruby test.rb);
done
(ruby test.rb)
  ( echo " \$BASH_SUBSHELL inside subshell        = $BASH_SUBSHELL" )     # 1
  ( ( echo " \$BASH_SUBSHELL inside nested subshell = $BASH_SUBSHELL" ) ) # 2
# ^ ^                           *** nested ***                        ^ ^

echo

echo " \$SHLVL outside subshell = $SHLVL"       # 3
( echo " \$SHLVL inside subshell  = $SHLVL";m )   # 3 (No change!)
RETVAL=$?
echo $RETVAL

  #exit $?  # End of script (but will never get here).

  var1=23
  echo "$var1"   # 23

  { var1=76; }
  echo "$var1"   # 76
