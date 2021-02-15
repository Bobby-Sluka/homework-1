#! /bin/bash
#Lab on 2/15 using if statements and check for two supplied arguments

args=$#
inp1=$1
inp2=$2
if [ $args -lt 2 ]
	then echo "Error! $# argument(s), need exactly two args"
elif [ $args -gt 2 ]
	then echo "Error! $# argument(s), need exactly two args"
else 
	let sum=$1+$2
	echo sum = $sum
fi
