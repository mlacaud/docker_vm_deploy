#!/bin/bash
#Script for Ubuntu 14.04

#stop the rabbitmq-server, so the broker won't return an error
if [[ ! $(which rabbitmq-server) ]]
then
	sudo service rabbitmq-server stop
fi
