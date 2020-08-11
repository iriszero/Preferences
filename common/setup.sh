#!/bin/bash

# vim
# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .vimrc ~

vim +PluginInstall +qall
~/.vim/bundle/youcompleteme/install.sh

# Tmux
cp .tmux.conf ~

# Save your git crediental in memory (for 15 mins)
git config --global credential.helper cache
git config --global user.name "Jason Huh"
git config --global user.email "jaeseok.huh.0@gmail.com"
