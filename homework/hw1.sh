#! /bin/bash

#loop through text file to ping devices
#and check whether the ping works

input=~/BFOR-206/homework/devices.txt
lines=`cat $input`
for line in $lines
do
	pg=$(ping $line -c4 | grep "packet loss")
	#echo "$pg" > ping.txt
	echo $'\n##########################################################\n' >> ~/logs/ping.log
	echo `date` >> ~/logs/ping.log
	ping $line -c4 >> ~/logs/ping.log
	final=`echo "$pg" | cut -d "," -f2 | cut -d " " -f2`
	if [ "$final" -lt "4" ]
		then echo "Device: $line is offline." | mail -s "DEVICE OFFLINE" Kali
	fi
done
