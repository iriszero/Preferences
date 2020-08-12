#!/bin/bash

BASE_DIR=$(dirname "$0")

$BASE_DIR/install_ohmyzsh.sh
$BASE_DIR/zsh_antigen_ohmyzsh.sh

sudo chsh -s /usr/bin/zsh
