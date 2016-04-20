#!/bin/bash
#do not use in production!
echo "deb http://repo.saltstack.com/apt/debian/8/amd64/latest jessie main" >> /etc/apt/sources.list.d/saltstack.list
apt-get update
apt-get install salt-master
apt-get install salt-minion
apt-get install salt-ssh
apt-get install salt-syndic
apt-get install salt-cloud
apt-get install salt-api
