#!/bin/bash

# Update package manager
sudo yum update -y

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo 'https://download.docker.com/linux/centos/docker-ce.repo'

sudo yum install -y docker-ce

sudo systemctl start docker
sudo systemctl enable docker


sudo docker --version
