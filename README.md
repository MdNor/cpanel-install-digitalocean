cpanel-install-digitalocean
===========================

Install cPanel on fresh installation of DigitalOcean CentOS 6 64-Bit

Make sure your hostname have been set properly. Also set Reverse DNS for your IP. 
Trust me, this will saves you lots of trouble later on.

---
#### Installation

````bash
yum install wget
````

This will also install htop, iotop, iftop, nethogs and vnstat utilities

````bash
wget https://raw.githubusercontent.com/MdNor/cpanel-install-digitalocean/master/install.sh
````

````bash
sh install.sh
````

----
There is no way to uninstall cPanel. You have to reinstall operating system to remove it completely.
