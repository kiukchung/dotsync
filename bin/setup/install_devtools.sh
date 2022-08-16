#!/bin/bash -e

set -o pipefail

# install git
sudo apt install -y git-all

# install watchman
# install watchman
wget https://github.com/facebook/watchman/releases/download/v2022.08.01.00/watchman-v2022.08.01.00-linux.zip
unzip watchman-v2022.08.01.00-linux.zip
cd watchman-v2022.08.01.00-linux
mkdir -p /usr/local/{bin,lib} /usr/local/var/run/watchman
cp bin/* /usr/local/bin
cp lib/* /usr/local/lib
chmod 755 /usr/local/bin/watchman
chmod 2777 /usr/local/var/run/watchman
