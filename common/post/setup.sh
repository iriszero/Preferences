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


$BASE_DIR/install_ohmyzsh.sh
$BASE_DIR/zsh_antigen_ohmyzsh.sh
$BASE_DIR/edit_hosts.sh

sudo chsh -s /usr/bin/zsh
echo "alias ll='ls -alf'" >> $HOME/.zshrc
