#! /bin/bash

#loop through text file to ping devices
#and check whether the ping works

input=devices.txt
lines=`cat $input`
for line in $lines
do
	ping $line -c1
done
