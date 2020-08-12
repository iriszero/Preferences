#!/bin/bash

BASE_DIR=$(dirname "$0")

if [[ $(dpkg -l|grep xserver) ]]; then
	GUI_ON=true
else
	GUI_ON=false
fi

# Change the apt source
sudo $BASE_DIR/change-ubuntu-mirror.sh -k

sudo apt update && apt upgrade -y
# Essential
sudo apt install -y build-essential cmake git vim htop build-essential vim-nox tmux wireshark openssh-client openssh-server vsftpd xclip tree

# Python
sudo apt install -y python2 python3 python-pip python3-pip virtualenv

if [ $GUI_ON ]; then
	# Bluetooth
	sudo apt install -y blueman pavucontrol
	
	# Wallpaper
	sudo apt install -y wallch

	# Gnome
	sudo apt install -y gnome-tweaks gnome-shell-extensions
fi

# Fast Downloader
sudo apt install -y aria2

# Shell
sudo apt install -y zsh
