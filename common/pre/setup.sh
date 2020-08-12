#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
elif [[ "$OSTYPE" == "darwin"* ]]; then
	USER_HOME=$HOME
fi

BASE_DIR=$(dirname "$0")

# vim
cp $BASE_DIR/.vimrc $USER_HOME

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $USER_HOME/.vim/bundle/Vundle.vim || :

cp $BASE_DIR/.vimrc $USER_HOME

vim +PluginInstall +qall
sudo python3 $USER_HOME/.vim/bundle/youcompleteme/install.py

# tmux
cp $BASE_DIR/.tmux.conf $USER_HOME

# START git
# Save your git crediental in memory (for 15 mins)
git config --global credential.helper cache

git config --global user.name "Jason Huh"
git config --global user.email "jaeseok.huh.0@gmail.com"
# END git
