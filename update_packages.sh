#!/bin/bash

#vars
logs_file=./update_logs.log

#funcs
check_exit_status(){
if [ $? -ne 0 ]
then
	echo "An error occured, please check the logs file."
fi
}

if command -v dnf &> /dev/null  
then 
	sudo dnf up -y &>> "$logs_file"
	check_exit_status
	echo "$(date)" >> "$logs_file"
	echo "--------------------------" >> "$logs_file"
fi
