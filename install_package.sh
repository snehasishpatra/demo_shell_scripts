#!/bin/bash

echo "installing $1"
sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "$1 installation completed"

