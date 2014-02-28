#!/bin/bash
# Install chef 11.0.11 server on ubuntu 12.04.

mkdir -p $HOME/downloads
pushd $HOME/downloads
# Download chef-server package.
wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.11-1.ubuntu.12.04_amd64.deb
# Install chef-server.
sudo dpkg -i chef-server_11.0.11-1.ubuntu.12.04_amd64.deb
# Configure chef server 11
sudo chef-server-ctl reconfigure
popd
# Verify hostname
hostname
# Verify the installation of chef server.
sudo chef-server-ctl test
