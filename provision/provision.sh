#!/bin/bash

# this procedure sets up the basic server prerequisites.
# 

# apt update
sudo apt-get -y update
sudo apt-get -y upgrade

# install vim-nox
sudo apt-get install -y vim-nox

# install git
sudo apt-get install -y git

# install curl
sudo apt-get install -y curl

# nodejs 8.x 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get -y update
sudo apt-get install -y nodejs

# for npm essentials 
sudo apt-get install -y build-essential

# installs mongodb
source ./mongo.sh

# move global npm directory to user based directory 
source ./node-permissions.sh

# installs nodemon globally afterwards
npm install -g nodemon

date