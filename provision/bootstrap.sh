#!/usr/bin/env bash

#install nginx
apt-get -y update
apt-get install -y build-essential

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

cd app
npm install

#print vm ip address
ip addr show eth1 | egrep "inet\ " | cut -f1 -d "/" | cut -f2 -d "t"