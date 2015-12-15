#!/bin/bash

# CentOs provision file for the vagrant

echo " provision started..."

# Update CentOs packages
yum update -y --exclude=kernel

# Tools
yum install -y nanp git unzip screen wget

# Apache
yum install -y http httpd-devel httpd-tools
chkconfig --add httpd
chkconfig http on

service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# Php
yum install -y php php-cli php-devel php-common php-mysql

# MySql
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysql-devel
chkconfig mysqld on
service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download starter content
cd /vagrant
sudo -u vagrant wget -q "https://raw.githubusercontent.com/RSamal/vagrant/master/files/index.html"
sudo -u vagrant wget -q "https://github.com/RSamal/vagrant/blob/master/files/info.php"

service http restart
