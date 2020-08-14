#!/bin/bash

BASE_DIR=$(dirname "$0")
BASE_FILE_NAME="stevenblack"

echo $(hostname -I | cut -d\  -f1) $(hostname) | sudo tee /etc/hosts > /dev/null
cat $BASE_DIR/hosts_list/$BASE_FILE_NAME | sudo tee -a /etc/hosts > /dev/null
for filename in $BASE_DIR/hosts_list/*; do
	[ -e "$filename" ] || continue
	
	if [ $BASE_FILE_NAME = $filename ]; then
		continue
	fi

	cat $filename | sudo tee -a /etc/hosts > /dev/null
done
