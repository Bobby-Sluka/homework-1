#! /bin/bash

echo "The scrpit is running."

input=$1
echo "The input is $input."

if [ $input -gt 0 ]
	then echo "The first statement is true."

elif [ $input -lt 1 ]
	then echo "The second statement is true."
else
	echo "None of the statements were true."

fi

echo "Done."
