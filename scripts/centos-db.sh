#!/bin/bash

# MySql
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysql-devel
chkconfig mysqld on
service mysqld start

mysql -u root -e "SHOW DATABASES";
