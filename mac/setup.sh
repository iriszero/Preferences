#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install cmake git htop vim zsh tmux
brew install python python3 pyenv-virtualenv python-pip python3-pip
brew install aria2
brew install git-credential-manager
brew install fasd

# Powerline Fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
