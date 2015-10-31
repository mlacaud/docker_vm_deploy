#!/bin/bash
#Script for Ubuntu 14.04

#sudo cd /usr/local/bin
sudo wget https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip
sudo unzip *.zip
sudo rm *.zip
sudo mv ./consul /usr/local/bin
