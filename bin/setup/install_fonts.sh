#!/bin/bash -e

set -o pipefail

echo "Installing true type fonts..."
# install true type font
cd /tmp
wget https://github.com/pensnarik/consolas-font/archive/refs/heads/master.zip
unzip master.zip
cp consolas-font-master/* /usr/share/fonts
fc-cache -fv

rm master.zip
rm -rf consolas-font-master
