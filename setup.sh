#!/bin/bash

# Check root permission
# if [[ $(/usr/bin/id -u) -ne 0 ]]; then
#    echo "Not running as root"
#    exit
# fi
BASE_DIR=$(dirname "$0")

$BASE_DIR/common/pre/setup.sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        $BASE_DIR/linux/setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
        $BASE_DIR/mac/setup.sh
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
	:
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
	:
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
	:
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
	:
else	
        # Unknown.
	:
fi

$BASE_DIR/common/post/setup.sh
