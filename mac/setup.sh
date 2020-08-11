#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install cmake git htop vim zsh tmux
brew install python python3 pyenv-virtualenv python-pip python3-pip
brew install aria2

curl -L git.io/antigen > $HOME/antigen.zsh
cat ./antigen_config_to_zshrc >> $HOME/.zshrc
cp .antigenrc $HOME/
