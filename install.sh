#!/bin/bash

# Install necessary dependencies
yum install -y perl screen

# Install cPanel in GNU Screen session
cd /tmp     
wget -N http://httpupdate.cPanel.net/latest
screen -S test -d -m sh latest

# Install EPEL repo
su -c 'rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm' > /var/log/cron.log 2>&1

# Install useful monitoring tool
yum install -y htop iotop iftop nethogs vnstat > /var/log/cron.log 2>&1

# Prevent "IP address have changed" error
sed -i 's/cookieipvalidation=strict/cookieipvalidation=loose/g' /var/cpanel/cpanel.config
/usr/local/cpanel/whostmgr/bin/whostmgr2 --updatetweaksettings > /var/log/cron.log 2>&1

exit
