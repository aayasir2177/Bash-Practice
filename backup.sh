#!/bin/bash

#test if the arguments are exactly two
if [ $# -ne 2 ] 
then
	echo "Usage: <source_dir> <dest_dir>"
	echo "Try again!"
	exit 1
fi

#vars
source_dir=$1
dest_dir=$2
date=$(date +%Y-%m-%d)

mkdir -p $2/logs
mkdir -p $2/incremental_backups
mkdir -p $2/current
sudo rsync \
	--archive \
	--verbose \
	--backup \
	--backup-dir=$dest_dir/incremental_backups/${date} \
	--delete \
	$source_dir/ \
	$dest_dir/current/ \
	&>> $2/logs/${date}.log
