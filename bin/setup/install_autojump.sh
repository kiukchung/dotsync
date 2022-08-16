#!/bin/bash -e

# install autojump
echo "Installing autojump..."
cd ~/
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
