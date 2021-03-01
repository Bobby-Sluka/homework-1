#! /bin/bash

# read input from file
# reads into variable called $input
#read input < input.txt

# make sure file reads properly
# by showing contents of the 
# input variable
#echo "\$input is $input"

printf "\n##########################\n\n" >> output.log

# put the date and time into the log
echo "The script is running at " `date` >> output.log
echo >> output.log
#### print and store the results

ping -c3 "youtube.com" >> output.log
echo >> output.log
echo "Done." >> output.log
