#!/bin/bash

apt-get install apache2 > /dev/null
apt-get install libapache2-mod-php7.2 -y > /dev/null

a2enmod actions   
a2enmod fastcgi
a2enmod alias
a2enmod proxy_fcgi
a2enmod rewrite
cp /var/www/Vagrant/config/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
cp /var/www/Vagrant/config/apache/ports.conf /etc/apache2/ports.conf
