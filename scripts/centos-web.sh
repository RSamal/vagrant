#!/bin/bash

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on

service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# Php
yum install -y php php-cli php-common php-devel php-mysql



# Download starter content
cd /vagrant
sudo -u vagrant wget -q "https://raw.githubusercontent.com/RSamal/vagrant/master/files/index.html"
sudo -u vagrant wget -q "https://github.com/RSamal/vagrant/blob/master/files/info.php"

service http restart
