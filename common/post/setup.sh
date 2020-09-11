#!/bin/bash

BASE_DIR=$(dirname "$0")

# vim
cp $BASE_DIR/.vimrc $HOME

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim || :

Vim +PluginInstall +qall
sudo python3 $HOME/.vim/bundle/youcompleteme/install.py

# tmux
cp $BASE_DIR/.tmux.conf $HOME


$BASE_DIR/install_ohmyzsh.sh
$BASE_DIR/zsh_antigen_ohmyzsh.sh
$BASE_DIR/edit_hosts.sh

chsh -s /usr/bin/zsh
echo "alias ll='ls -alf'" >> $HOME/.zshrc

# fd-find / https://github.com/sharkdp/fd
echo "alias fd=fdfind" >> $HOME/.zshrc
