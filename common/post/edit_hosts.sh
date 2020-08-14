#!/bin/bash

BASE_DIR=$(dirname "$0")

for filename in $BASE_DIR/hosts_list/*; do
	[ -e "$filename" ] || continue
	sudo rm /etc/hosts
	cat $filename | sudo tee /etc/hosts > /dev/null
done
