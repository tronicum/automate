#!/bin/bash

git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible
source ./hacking/env-setup
#optinal
#sudo install.sh paramiko PyYAML Jinja2 httplib2 six
echo make deb or make rpm to create a package
