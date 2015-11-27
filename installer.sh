#!/bin/bash

curl -sS https://raw.githubusercontent.com/artifex404/zip-git/master/zip-git.sh -o ~/zip-git.sh
echo "alias zip-git='~/zip-git.sh'" >> ~/.bash_profile
source ~/.bash_profile
echo -e "\e[1m\e[32mZip-git installed successfully!"