#!/bin/bash

echo "Provisioning virtual machine..."

#rm /var/lib/dpkg/updates/*

echo "Installing Git"
apt-get install git -y > /dev/null


apt-get install mc -y > /dev/null
apt-get install htop -y > /dev/null

apt-get install software-properties-common -y > /dev/null
apt-get install python-software-properties -y > /dev/null


apt-get install apt-transport-https lsb-release ca-certificates -y > /dev/null
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
apt-get update -y > /dev/null


echo "Installing PHP"
sh /var/www/Vagrant/provision/php.sh
echo "Installing Apache"
sh /var/www/Vagrant/provision/apache.sh
echo "Installing MySQL"
sh /var/www/Vagrant/provision/mysql.sh
echo "Installing Other"
sh /var/www/Vagrant/provision/other.sh



