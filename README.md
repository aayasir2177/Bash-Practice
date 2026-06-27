# Bash Practice

This repo contains the bash scripts I wrote while learning shell scripting from the LearnLinux TV Youtube playlist. 
https://www.youtube.com/watch?v=2733cRPudvI&list=PLT98CRl2KxKGj-VKtApD8-zCqSaN2mD4w

The goal is to document my progress.

## I learned
- Variables
- Arguments
- Conditional statements
- Loops
- Functions
- File tests -f, -d
- Data Steams >, >>, 2>, &>
- Exit codes
- Logging
- Backup automation with rsync
- Command substitution
- Troubleshooting

The most meaningful script is the backup script I wrote.

## Usage

```bash
sudo ./backup.sh <source_directory> <destination_directory>
```

## backup.sh

```bash
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

```
## Screenshots
<img width="831" height="561" alt="image" src="https://github.com/user-attachments/assets/33e3c663-48e6-4fec-8f77-dd1cf3c42d46" />

<img width="1111" height="738" alt="image" src="https://github.com/user-attachments/assets/e21ae355-5998-488f-974f-dfa053847313" />



