#! /bin/bash

# lab fibonacci sequence
#use java loop, counter = users input to count

array=( 0 1 )
echo "The input is $1"
for (( i=1; i<=$1; i++ ))
do
	let "add1=${array[$i-1]}"
	echo $add
	array+=( ${array[$i-1]} + ${array[$i]})
done
echo ${array[@]}
