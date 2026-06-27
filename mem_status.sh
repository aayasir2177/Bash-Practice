#!/bin/bash

#vars
free_space=$(free -tm | grep Total | awk '{print $4}')
threshold=500

if [ $free_space -lt $threshold ] 
then
	echo "WARNING: Memory is low! - $free_space" 
else
	echo "Memory is sufficient. - $free_space"
fi


