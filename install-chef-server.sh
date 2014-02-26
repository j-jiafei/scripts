#!/bin/bash
# Install chef 11.0.11 server on ubuntu 12.04.

sudo dpkg -i chef-server_11.0.11-1.ubuntu.12.04_amd64.deb
sudo chef-server-ctl reconfigure
