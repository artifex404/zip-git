#!/bin/bash

curl -sS https://raw.githubusercontent.com/artifex404/zip-git/master/zip-git.sh -o ~/zip-git.sh
chmod u+x ~/zip-git.sh
echo "alias zip-git='~/zip-git.sh'" >> ~/.bash_profile
source ~/.bash_profile
echo -e '\033[1m\033[32mZip-git installed successfully!\033[0m'