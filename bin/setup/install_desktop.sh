#!/bin/bash -e

set -o pipefail

# install gnome desktop
echo "Installing gnome desktop (this takes a while)..."
apt-get install -y ubuntu-desktop               #Default Ubuntu desktop
apt install -y ubuntu-gnome-desktop             #Ubuntu Gnome (Official flavor)
apt-get install -y xfce4                        #LXDE
apt-get install -y lxde                 #LXDE
apt-get install -y kubuntu-desktop

# install vnc
echo "Installing vnc server..."
apt install -y tigervnc-standalone-server tigervnc-common tigervnc-xorg-extension tigervnc-viewer
