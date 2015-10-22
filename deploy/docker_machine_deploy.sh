#!/bin/bash

# Update
echo "[UPDATE] "
sudo apt-get update -y

# Docker + Docker-machine installation
if [[ ! $(which wget) ]] 
then
        echo "[INSTALL] wget"
        sudo apt-get install wget
fi

if [[ (! $(which docker)) && (! $(which docker.io)) ]]
then
        echo "[INSTALL] docker"
        wget -qO- https://get.docker.com/ | sh
else
	echo "Docker is installed"
fi

if [[ ! $(which docker-machine) ]]
then
        if [[ ! $(which curl) ]]
        then
                echo "[INSTALL] curl"
                sudo apt-get install curl
        fi

        echo "[INSTALL] docker-machine"
        curl -L curl -L https://github.com/docker/machine/releases/download/v0.4.0/docker-machine_linux-amd64 > /usr/local/bin/docker-machine > docker-machine
        sudo mv docker-machine /usr/local/bin/
        sudo chmod +x /usr/local/bin/docker-machine
else
	echo "Docker-Machine is installed"
fi


