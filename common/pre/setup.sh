#!/bin/bash

BASE_DIR=$(dirname "$0")

# START git
sudo apt install -y git

# Curl
sudo apt install -y curl

cat .zprofile >> $HOME/.zprofile
# END git
