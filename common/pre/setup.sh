#!/bin/bash

BASE_DIR=$(dirname "$0")

# START git
# Save your git crediental in memory (for 15 mins)
git config --global credential.helper cache

git config --global user.name "Jason Huh"
git config --global user.email "jaeseok.huh.0@gmail.com"
# END git
