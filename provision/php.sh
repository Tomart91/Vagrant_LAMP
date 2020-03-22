#!/bin/bash


apt-get install php7.2 -y > /dev/null
apt-get install  php7.2-fpm -y > /dev/null
apt-get install php7.2-curl -y > /dev/null
apt-get install php7.2-gd  -y > /dev/null
apt-get install php7.2-json -y > /dev/null
apt-get install php7.2-mbstring -y > /dev/null
apt-get install php7.2-imap -y > /dev/null
apt-get install php7.2-xml -y > /dev/null
apt-get install php7.2-zip -y > /dev/null
apt-get install php7.2-soap -y > /dev/null
apt-get install php7.2-ldap -y > /dev/null
apt-get install php7.2-apcu -y > /dev/null

rm -rf /etc/php/7.2/cli
cp /var/www/Vagrant/config/php/php.ini /etc/php/7.2/fpm/php.ini

rm /etc/php/7.2/fpm/pool.d/www.conf 
cp /var/www/Vagrant/config/php/yeti.conf /etc/php/7.2/fpm/pool.d/yeti.conf 
cp /var/www/Vagrant/config/php/yeti2.conf /etc/php/7.2/fpm/pool.d/yeti2.conf
cp /var/www/Vagrant/config/php/local.conf /etc/php/7.2/fpm/pool.d/local.conf 
cp /var/www/Vagrant/config/php/Portal.conf /etc/php/7.2/fpm/pool.d/Portal.conf
cp /var/www/Vagrant/config/php/Portal2.conf /etc/php/7.2/fpm/pool.d/Portal2.conf 
cp /var/www/Vagrant/config/php/Test.conf /etc/php/7.2/fpm/pool.d/Test.conf

ln -s /etc/php/7.2/fpm /etc/php/7.2/cli