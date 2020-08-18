#!/bin/bash

BASE_DIR=$(dirname "$0")

curl -L git.io/antigen > $HOME/antigen.zsh
cat $BASE_DIR/antigen_config_to_zshrc >> $HOME/.zshrc
\cp -f $BASE_DIR/.antigenrc $HOME/

# Peter Parker Principle
echo "echo 'With great power comes great responsibility.'" >> $HOME/.zshrc
