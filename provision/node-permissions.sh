#!/bin/bash

# sets the global node installation directory 
mkdir ~/.npm-global

npm config set prefix '~/.npm-global'

export PATH=~/.npm-global/bin:$PATH

source ~/.profile

chown $USER ~/.npm-global -R
