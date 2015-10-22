#!/bin/bash
#Script for Ubuntu 14.04

sudo docker-machine rm swarm-agent-00 -f
sudo docker-machine rm swarm-agent-01 -f
sudo docker-machine rm swarm-agent-02 -f
sudo docker-machine rm swarm-master -f
sudo docker-machine rm local -f
