#!/bin/bash

lines=$(ls -l $1 | wc -l)

if [ $# -ne 1 ]
then
	echo "Exactly one argument was expected!"
	exit 1
fi

echo "Numbers of lines are: $lines"
