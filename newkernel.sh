#! /bin/bash

# kernel 4
sudo yum update -y 
sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo yum install https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm -y
sudo yum update -y
sudo yum install yum-utils -y
sudo yum-config-manager --enable elrepo-kernel
sudo yum install kernel-lt -y
sudo grub2-set-default 0
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

# Packages

#Apache
sudo yum install httpd -y

#PHP
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
sudo yum update -y
sudo yum-config-manager --enable remi-php72
sudo yum install php72 php-cli php-php-gettext php-mbstring php-mcrypt php-mysqlnd php-pear \
php-curl php-gd php-xml php-bcmath php-zip php-fpm php-pgsql php-soap git composer -y

#PgSQL11

sudo yum install https://yum.postgresql.org/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm -y
sudo yum install postgresql11-server -y

sudo /usr/pgsql-11/bin/postgresql-11-setup initdb
sudo systemctl start postgresql-11
sudo systemctl enable postgresql-11


#Apache
sudo systemctl start httpd
sudo systemctl enable httpd

