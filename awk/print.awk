#!/usr/bin/env awk -f
#!/bin/awk -f
{
	$1="";
	$3="";
	print;
	print $2, $4;
}

