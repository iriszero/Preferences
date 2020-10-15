#!/bin/bash

BASE_DIR=$(dirname "$0")

# START git
# Save your git crediental in memory (for 15 mins)
sudo apt install -y git

cat .zprofile >> $HOME/.zprofile
# END git
