#!/usr/bin/env awk -f
BEGIN {
	f="";

    	username[0][0]=0;

}
{	for (i in username) {
		print i, username[i];

	}
	#print;
}
