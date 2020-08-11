#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
elif [[ "$OSTYPE" == "darwin"* ]]; then
	USER_HOME=$HOME

BASE_DIR=$(dirname "$0")

# vim
# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $USER_HOME/.vim/bundle/Vundle.vim || :

cp $BASE_DIR/.vimrc $USER_HOME

vim +PluginInstall +qall
python3 $USER_HOME/.vim/bundle/youcompleteme/install.py

# Tmux
cp $BASE_DIR/.tmux.conf $USER_HOME

# Save your git crediental in memory (for 15 mins)
git config --global credential.helper cache

git config --global user.name "Jason Huh"
git config --global user.email "jaeseok.huh.0@gmail.com"
