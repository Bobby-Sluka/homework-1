#! /bin/bash

# create the array
test_array=( "one" "two" "three" )

# with bash, array index starts at 0
echo ${test_array[0]}


#################################

echo "enter your name:"
read name_var
echo "You entered $name_var"

# fancy
read -p "Enter your name: " -a name_var
echo "You entered your first name as ${name_var[0]}"
