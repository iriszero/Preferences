#!/bin/bash

BASE_DIR=$(dirname "$0")

# vim
cp $BASE_DIR/.vimrc $HOME

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim || :

vim +PluginInstall +qall
python3 $HOME/.vim/bundle/youcompleteme/install.py

# tmux
cp $BASE_DIR/.tmux.conf $HOME

# Git Config
touch $HOME/.gitconfig
cat $BASE_DIR/.gitconfig >> $HOME/.gitconfig

$BASE_DIR/zsh_antigen_ohmyzsh.sh

# coloring
cat $BASE_DIR/.zshrc_color >> $HOME/.zshrc

sudo chsh -s /usr/bin/zsh
cat $BASE_DIR/.aliases >> $HOME/.aliases

echo 'eval "$(fasd --init auto)"' >> $HOME/.zshrc
echo "source ~/.aliases" >> $HOME/.zshrc

# gitconfig
cat $BASE_DIR/.gitconfig >> $HOME/.gitconfig

# .ssh/config
mkdir -p $HOME/.ssh/
cat $BASE_DIR/.ssh_config >> $HOME/.ssh/config

