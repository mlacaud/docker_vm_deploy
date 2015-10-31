#!/bin/bash
#Script for Ubuntu 14.04

if [ $# -eq 0 ]
then
  echo "Please write : ./launch_etcd [name] [ip address]"
else
  etcd -name $1 -initial-advertise-peer-urls http://$2:2380 \
    -listen-peer-urls http://$2:2380 \
    -listen-client-urls http://$2:2379,http://127.0.0.1:2379 \
    -advertise-client-urls http://$2:2379
fi
