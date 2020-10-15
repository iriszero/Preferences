#!/bin/bash

BASE_DIR=$(dirname "$0")

# START git
# Save your git crediental in memory (for 15 mins)
sudo apt install -y git
git config --global credential.helper cache

git config --global user.name "Jason Huh"
git config --global user.email "jaeseok.huh.0@gmail.com"

cat .zprofile >> $HOME/.zprofile
# END git
