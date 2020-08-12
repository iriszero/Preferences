#!/bin/bash

BASE_DIR=$(dirname "$0")

# vim
cp $BASE_DIR/.vimrc $HOME

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim || :

cp $BASE_DIR/.vimrc $HOME

vim +PluginInstall +qall
sudo python3 $HOME/.vim/bundle/youcompleteme/install.py

# tmux
cp $BASE_DIR/.tmux.conf $HOME

# START git
# Save your git crediental in memory (for 15 mins)
git config --global credential.helper cache

git config --global user.name "Jason Huh"
git config --global user.email "jaeseok.huh.0@gmail.com"
# END git
