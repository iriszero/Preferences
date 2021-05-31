#!/bin/bash

BASE_DIR=$(dirname "$0")

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# START git
brew install git

# Curl
brew install curl

# Zsh
brew install zsh
