SET PASSWORD FOR 'root'@'localhost' = '';
GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE `yetiforce`CHARACTER SET utf8 COLLATE utf8_general_ci; 
SET GLOBAL innodb_file_per_table=1;