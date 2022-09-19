#!/bin/bash

BASE_DIR=$(dirname "$0")

if [[ $(dpkg -l|grep xserver) ]]; then
	GUI_ON=true
else
	GUI_ON=false
fi

# Change the apt source
# sudo $BASE_DIR/change-ubuntu-mirror.sh -k

apt update

# Essential
apt install -y apt-utils dialog

echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
apt install -y build-essential cmake git vim build-essential vim-nox tmux wireshark openssh-client openssh-server vsftpd xclip tree

apt install -y htop iftop iotop
apt install -y bwm-ng


# Python
apt install -y python2 python2-dev
apt install -y python3 python3-pip python3-dev virtualenv

# TLDR
apt install -y tldr

## init needed
tldr

# fd-find
apt install -y fd-find

# Ripgrep
apt install -y ripgrep

# fzf
apt install -y fzf

# fasd
apt install -y fasd

if [[ "$GUI_ON" = true ]]; then
	$BASE_DIR/setup_desktop.sh
fi

# Fast Downloader
apt install -y aria2

# DNS Utils
apt install -y dnsutils

# Shell
apt install -y zsh

# Powerline Fonts
apt-get install -y fonts-powerline

# Count LOC
apt install -y cloc
