#!/bin/bash

echo "Preparing MySQL"
apt-get install debconf-utils -y > /dev/null
echo "mysql-server-5.1 mysql-server/root_password password root" > ~/mysql.preseed
echo "mysql-server-5.1 mysql-server/root_password_again password root" >> ~/mysql.preseed
echo "mysql-server-5.1 mysql-server/start_on_boot boolean true" >> ~/mysql.preseed
cat ~/mysql.preseed | sudo debconf-set-selections
echo "Install MySQL Server"
apt-get install mysql-server -y > /dev/null
echo "Install Connector MySQL"
apt-get install php7.2-mysql -y > /dev/null
mysql --user=root --password=root < "/var/www/Vagrant/config/mysql/sql.sql"
cp /var/www/Vagrant/config/mysql/my.cnf /etc/mysql/my.cnf

