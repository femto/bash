#!/usr/bin/awk -f
BEGIN { print "File\tOwner"}
BEGIN { x=1 }
{ print x, $x}
END { print " - DONE -" }