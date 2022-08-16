#!/bin/bash -e

set -o pipefail

# installs AWS tools

# aws cli
echo "Installing AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
rm awscliv2.zip

# ec2-instance-connect
echo "Installing ec2-instance-connect..."
apt-get install ec2-instance-connect

