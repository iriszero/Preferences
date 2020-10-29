#!/bin/bash

BASE_DIR=$(dirname "$0")

# vscode extensions
cp $BASE_DIR/vscode_extensions/ $HOME/.vscode/extensions/ -r
