#!/bin/bash

BASE_DIR=$(dirname "$0")

apt update 

# START git
apt install -y git

# Curl
apt install -y curl

# Zsh
apt install -y zsh
