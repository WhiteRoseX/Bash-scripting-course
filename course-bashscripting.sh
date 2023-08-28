#!/bin/bash
# ''  different of "" bcs with the first one you can't put variable inside string
# There is list of default variables like $USER that contains the name of the user logged in the machine
# env command contains the list of default variables
# to make maths operations : expr $number1 + $number2  (can be:  +, -, \*, /, %)
# $? gives exit code: 0 is true the other are false

myname="John"
myage="18.7"
path=$(pwd) # subshell, can use command inside variable
date=$(date)
nmbr_value=250
file="exemple.txt"

echo "This program is running the: $date"
echo "My name is $myname and i'm  $myage"
echo "My current path: $path"
echo "Logged in as $USER"

# if statement part: ! says the reverse of condition, -eq -ne, -gt

if [ $nmbr_value -eq 150 ]
then
	echo "The value is true"
else
	echo "The value is not 150"
fi

# if application: check existing file in system 

if [ -f ~/Desktop/$file ]
then 
	echo "The file is existing"
else
	echo "The file is not existing"
fi

if [ -f /usr/bin/htop ] # note: -f check if file exist
then
	echo "Command already installed"
else
	echo "Command is not avaible, installing it"
	sudo apt update && sudo apt install -y htop 
fi

# while loop part: 

myvar=1

while [ $myvar -le 10 ]
do
	echo $myvar
	myvar=$(( $myvar + 1 ))
	sleep 0.5
done
