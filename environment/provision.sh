#!/bin/bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git
sudo apt-get install nginx -y
curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get install -y nodejs
sudo apt install build-essential
curl -L https://npmjs.org/install.sh | sudo sh
sudo npm install pm2@latest -g
