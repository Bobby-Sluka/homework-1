#! /bin/bash

# lab fibonacci sequence
#print fibonacci sequence up to inputted number

array=( 0 1 )
i=1
echo "The input is $1"
if [ $1 -le 0 ]
	then echo "0"
elif [ $1 -eq 1 ]
	then echo "0 1"
else
	while [ ${array[-1]} -le $1 ]
	do
		let "var=$i - 1"
		let "add1=${array[$var]}"
		let "add2=${array[$i]}"
		let "sum=$add1 + $add2"
		array+=( $sum )
		i+=1
	done
echo ${array[@]}
echo ${array[$i]}
fi
