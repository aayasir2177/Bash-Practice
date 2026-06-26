#!/bin/bash

num=10
htop=/usr/bin/htop

if [ $num -eq 100 ] 
then
	echo "Equal to 100"
else
	echo "Not equal to 100"
fi

if [ $num -ne 100 ] 
then
	echo "Not equal to 100"
else
	echo "Equal to 100"
fi

if [ $num -gt 99 ] 
then
	echo "Greater than 99"
else
	echo "Not greater than 99"
fi

if [ $num -lt 99 ] 
then
	echo "Less than than 99"
else
	echo "Not less than 99"
fi

if [ -d ~/Downloads ] 
then
	echo "Directory exists"
else
	echo "Directory doesn't exist"
fi

#if [ -f $htop ] 
#then
#	echo "$htop exist"
#else
#	echo "$htop doesn't exist. Installing..."
#	sudo dnf install htop -y
#fi

if command -v $htop 
then
	echo "$htop exist"
else
	echo "$htop doesn't exist. Installing..."
	sudo dnf install htop -y
fi

