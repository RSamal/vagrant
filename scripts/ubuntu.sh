#!/bin/bash

echo "installing apache2 and starting the server"
apt-get update -y
apt-get install apache2 -y
rm -rf /var/www/html
ln -sf /vagrant /var/www/html
