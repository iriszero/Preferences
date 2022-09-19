#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

BASE_DIR=$(dirname "$0")

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        $BASE_DIR/common/pre/linux.sh
        $BASE_DIR/linux/setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
        $BASE_DIR/common/pre/mac.sh
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
