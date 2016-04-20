#!/bin/bash

cd /tmp
wget https://packages.chef.io/stable/el/6/chef-server-core-12.5.0-1.el6.x86_64.rpm
rpm -Uvh /tmp/chef-server-core-12.5.0-1.el6.x86_64.rpm
chef-server-ctl reconfigure
chef-server-ctl user-create admin some admin someguy@some.domain 'abc123' --filename /tmp/admin.pem
chef-server-ctl org-create short_name 'acme' --association_user admin --filename acme-validator.pem
