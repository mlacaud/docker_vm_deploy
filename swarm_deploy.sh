#!/bin/bash
#Script for Ubuntu 14.04


sudo docker-machine create -d virtualbox local

eval "$(docker-machine env local)"
echo "after eval"
sudo docker pull swarm
echo "after pull"
token=$(sudo docker run swarm create)

echo 'Token = $token'

sudo docker-machine create -d virtualbox --swarm --swarm-master --swarm-discovery token://$token swarm-master

sudo docker-machine create -d virtualbox --swarm --swarm-discovery token://$token swarm-agent-00
sudo docker-machine create -d virtualbox --swarm --swarm-discovery token://$token swarm-agent-01
sudo docker-machine create -d virtualbox --swarm --swarm-discovery token://$token swarm-agent-02

eval $(docker-machine env --swarm swarm-master)
