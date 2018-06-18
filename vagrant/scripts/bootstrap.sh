#!/usr/bin/env bash

sudo echo -e "{\n  \"insecure-registries\" : [\"registry.fundacion-jala.local\"]\n}" > "/etc/docker/daemon.json"
sudo service docker restart

# Create Jenkins home directory
sudo mkdir -p $HOME/docker/jenkins

# Create GoCD Server home and data directory. 
sudo mkdir -p $HOME/docker/godata_server
sudo mkdir -p $HOME/docker/go_server

# Create GoCD Agent home and data directory. 
sudo mkdir -p $HOME/docker/godata_agent
sudo mkdir -p $HOME/docker/go_agent
