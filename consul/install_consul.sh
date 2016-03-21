#!/bin/bash
#Script for Ubuntu 14.04

#sudo cd /usr/local/bin
sudo wget https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip
sudo unzip *.zip
sudo rm *.zip
sudo mv ./consul /usr/local/bin

sudo mkdir /etc/consul.d
sudo mkdir /etc/consul.d/server

echo '{"bootstrap": false, "server": true,	"data_dir": "/tmp/consul",	"log_level": "INFO",	"enable_syslog": false,	"client_addr": "0.0.0.0"}' > config.json

sudo mv ./config.json /etc/consul.d/server/config.json
