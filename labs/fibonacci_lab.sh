#! /bin/bash

# lab fibonacci sequence
#use java loop, counter = users input to count

array=( 0 1 )
echo "The input is $1"
if [ $1 -le 0 ]
	then echo "0"
elif [ $1 -eq 1 ]
	then echo "0 1"
else
	for (( i=1; i<$1; i++ ))
	do
		let "var=$i - 1"
		let "add1=${array[$var]}"
		let "add2=${array[$i]}"
		let "sum=$add1 + $add2"
		array+=( $sum )
	done
echo ${array[@]}
fi
