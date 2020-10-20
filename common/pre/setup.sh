#!/bin/bash

BASE_DIR=$(dirname "$0")

# START git
# Save your git crediental in memory (for 15 mins)
sudo apt install -y git

# Curl
sudo apt install -y curl

cat .zprofile >> $HOME/.zprofile
# END git
