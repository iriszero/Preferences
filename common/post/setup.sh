#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    USER_HOME=$(getent passwd $USER | cut -d: -f6)
elif [[ "$OSTYPE" == "darwin"* ]]; then
    USER_HOME=$HOME
fi

BASE_DIR=$(dirname "$0")

$BASE_DIR/install_ohmyzsh.sh
$BASE_DIR/zsh_antigen_ohmyzsh.sh
