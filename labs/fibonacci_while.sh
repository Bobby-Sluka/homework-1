#! /bin/bash

# lab fibonacci sequence
#use java loop, counter = users input to count

array=( 0 1 )
i=1
echo "The input is $1"
if [ $1 -le 0 ]
	then echo "0"
elif [ $1 -eq 1 ]
	then echo "0 1"
else
	while [ 1 -eq 1 ]
	do
		let "var=$i - 1"
		let "add1=${array[$var]}"
		let "add2=${array[$i]}"
		let "sum=$add1 + $add2"
		if [ $sum -le $1 ]
			then array+=( $sum )
			i=$i+1
		else
			break
		fi

done
echo ${array[@]}
fi
