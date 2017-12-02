#########################################################################
#LAMP for Raspberry Pi                                                  #
#This script will install Apache, PHP, FTP, and MySQL.                  #
#This script was written by Harbour, Justin                             #
#[C] 2013 Justin Harbour: See LICENSE.md for details                    #
#########################################################################

#!/bin/bash

#Prerequisites
sudo apt-get update

#Apache
sudo apt-get install -y apache2

#Change the persmissions
sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/

#PHP
sudo apt-get install -y php5 libapache2-mod-php5 libcurl3 php5-intl php5-mcrypt php5-curl php5-gd php5-sqlite

#MySQL
sudo apt-get install -y mysql-server mysql-client php5-mysql

#DNS Server
#apt-get -y install bind9

#Install Phpmyadmin 
sudo aptitude install -y phpmyadmin
