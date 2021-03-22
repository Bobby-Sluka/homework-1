#! /bin/bash

#loop through text file to ping devices
#and check whether the ping works

input=devices.txt
lines=`cat $input`
for line in $lines
do
	pg=$(ping $line -c4 | grep "packet loss")
	echo "$pg" >> ping.txt 
done
pingtext=ping.txt
parse=`cat $pingtext`
for p in parse
do
	#echo “$p” | cut -d% -f1
	echo "$p"
done

