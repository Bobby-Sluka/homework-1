#! /bin/bash

#loop through text file to ping devices
#and check whether the ping works

input=devices.txt
lines=`cat $input`
for line in $lines
do
	pg=$(ping $line -c4 | grep "packet loss")
	#echo "$pg" > ping.txt
	echo "$pg" | cut -d "%" -f1 > ping.txt
	value="$pg" | cut -d "," -f2
	final="value" | cut -d " " -f1
#	echo "final is $final"
	echo "$value"
	#if [ "$final" == "4" ]
	#	then echo "online because $value = 4"
	#else
	#	echo "offline because $value = 0"
	##fi  
done
#pingtext=ping.txt
#parse=`cat $pingtext`
#for p in parse
#do
#	#echo “$p” | cut -d% -f1
#	echo "$p"
#done

