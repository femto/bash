#!/bin/bash
# avoid-subshell.sh
# Suggested by Matthew Walker.

Lines=0

echo

[ 1 ]|while [ 1 ];
                 do
			                    echo $line
			                    echo  $BASH_SUBSHELL
					                       (( Lines++ ));  #  Incremented values of this variable
							                                          #+ inaccessible outside loop.
												                                     #  Subshell problem.
break
																		                       done

																				       echo "Number of lines read = $Lines"     # 0
																				                                                # Wrong!

																										echo "------------------------"


																										exec 3<> myfile.txt
																										(while read line <&3
																										do {
																											  echo "$line"
																											  echo  $BASH_SUBSHELL
																											    (( Lines++ ));                   #  Incremented values of this variable
																											                                       #+ accessible outside loop.
																															                                          #  No subshell, no problem.
																																			  }
																																		  done)
																																		  exec 3>&-

																																		  echo "Number of lines read = $Lines"     # 8

																																		  echo

																																		  exit 0
