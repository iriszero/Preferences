#!/bin/bash

if [[ $(zsh) -ne 0 ]]; then
	exit
fi

curl -L git.io/antigen > $HOME/antigen.zsh
cat ./antigen_config_to_zshrc >> $HOME/.zshrc
\cp -f .antigenrc $HOME/

# Peter Parker Principle
echo "With great power comes great responsibility." >> $HOME/.zshrc
