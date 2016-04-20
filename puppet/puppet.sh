#!/bin/bash
#do not use in production!

wget https://apt.puppetlabs.com/puppetlabs-release-pc1-jessie.deb
dpkg -i puppetlabs-release-pc1-jessie.deb
apt-get update
apt-get install puppet-agent
apt-get install puppetserver
puppet resource package puppetdb-termini ensure=latest
apt-get install puppetdb
service puppetserver stop
service puppetdb stop
echo "host=0.0.0.0 >> /etc/puppetlabs/puppetdb/conf.d/jetty.ini"
echo "storeconfigs = true
storeconfigs_backend = puppetdb
reports = store,puppetdb
autosign=true >> /etc/puppetlabs/puppet/puppet.conf"
