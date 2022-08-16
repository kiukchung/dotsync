#!/bin/bash -e

set -o pipefail

git submodule add git@github.com:dotphiles/dotsync.git ~/.dotfiles
git submodule update --init
