#!/bin/bash

cd ~/logs || exit 1

for file in *.log
do
	tar -czvf "$file.tar.gz" "$file"
done

