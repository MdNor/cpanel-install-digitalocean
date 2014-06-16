#!/bin/bash

# Install necessary dependencies
yum install -y perl wget

# Install cPanel
wget -N http://httpupdate.cPanel.net/latest
sh latest

# Install EPEL repo
su -c 'rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm'

# Install useful monitoring tool
yum install -y htop iotop iftop nethogs vnstat

# Prevent "IP address have changed" error
sed -i 's/cookieipvalidation=strict/cookieipvalidation=loose/g' /var/cpanel/cpanel.config
/usr/local/cpanel/whostmgr/bin/whostmgr2 --updatetweaksettings

exit
