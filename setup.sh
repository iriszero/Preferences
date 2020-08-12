#!/bin/bash

# Check root permission
# if [[ $(/usr/bin/id -u) -ne 0 ]]; then
#    echo "Not running as root"
#    exit
# fi

./common/pre/setup.sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        ./linux/setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
        ./mac/setup.sh
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

./common/post/setup.sh
