#!/bin/bash


curl -L git.io/antigen > $HOME/antigen.zsh
cat ./antigen_config_to_zshrc >> $HOME/.zshrc
\cp -f .antigenrc $HOME/

# Peter Parker Principle
echo "echo 'With great power comes great responsibility.'" >> $HOME/.zshrc
