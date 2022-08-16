#!/bin/bash -e

set -o pipefail

# install eternal terminal
apt-get install -y software-properties-common
add-apt-repository -y ppa:jgmath2000/et
apt-get update
apt-get install -y et
