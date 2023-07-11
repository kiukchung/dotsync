#!/bin/bash -e
# installs linux GUI on Amazon Linux 2

set -o pipefail

echo "Installing X11 Fonts..."
yum install -y xorg-x11-fonts-Type1 xorg-x11-fonts-base libXfont

echo "Installing XFCE..."
wget http://archives.fedoraproject.org/pub/archive/fedora/linux/releases/23/Everything/x86_64/os/Packages/d/desktop-backgrounds-basic-23.0.0-1.fc23.noarch.rpm
rpm -Uvh desktop-backgrounds-basic-23.0.0-1.fc23.noarch.rpm

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh epel-release-latest-7.noarch.rpm

# install vnc
echo "Installing vnc server..."
yum install -y tigervnc-server
