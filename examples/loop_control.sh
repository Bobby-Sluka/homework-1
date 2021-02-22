#! /bin/bash

a=0
LIMIT=15

while [ $a -le $LIMIT ]
do
#	echo "we are ar the start of the loop, \$a is $a"

	let "a += 1"
	if [ $a -eq 3 ] || [ $a -eq 11 ]
	then
		echo
		echo "The value of \$a is either 3 or 11: $a"
		continue # break will stop the loop and go to after 'done'
	fi
	echo -n "$a "

done
echo
echo "done"
