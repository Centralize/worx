#!/bin/bash

# COLORS
reset=`tput sgr0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`

clear
echo "${red}███████╗███████╗████████╗██╗   ██╗██████╗     ██╗      █████╗ ███╗   ███╗██████╗  █████╗ "
echo "${red}██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗    ██║     ██╔══██╗████╗ ████║██╔══██╗██╔══██╗"
echo "${red}███████╗█████╗     ██║   ██║   ██║██████╔╝    ██║     ███████║██╔████╔██║██████╔╝╚█████╔╝"
echo "${red}╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝     ██║     ██╔══██║██║╚██╔╝██║██╔═══╝ ██╔══██╗"
echo "${red}███████║███████╗   ██║   ╚██████╔╝██║         ███████╗██║  ██║██║ ╚═╝ ██║██║     ╚█████╔╝"
echo "${red}╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝         ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝      ╚════╝ "
echo "${reset}"
                                                                                         

echo "${yellow} Installing Apache 2.4.x${reset}"
apt install -y apache2
systemctl enable apache2.service
systemctl start apache2.service
echo "${yellow} Done.${reset}"

echo "${yellow} Installing MariaDB-Server and MariaDB-Client${reset}"
apt install -y mariadb-server mariadb-client
systemctl enable mariadb.service
mysql_secure_installation
systemctl restart mariadb.service
echo "${yellow} Done.${reset}"

echo "${yellow} Installing PHP 8.1${reset}"
apt install -y php8.1 php8.1-{amqp,ast,bcmath,bz2,cgi,cli,common,curl,dba,decimal,dev,ds,enchant,fpm,gd,gearman,gmp,gnupg,grpc,http,igbinary,imagick,imap,inotify,interbase,intl,ldap,lz4,mailparse,maxminddb,mbstring,mcrypt,memcache,memcached,mongodb,msgpack,mysql,oauth,odbc,opcache,pcov,pgsql,phpdbg,protobuf,ps,pspell,psr,raphf,readline,redis,rrd,smbclient,snmp,soap,solr,sqlite3,ssh2,swoole,sybase,tidy,uopz,uploadprogress,uuid,vips,xdebug,xhprof,xml,xmlrpc,xsl,yac,yaml,zip,zmq,zstd}
systemctl restart apache2.service
echo "<?php phpinfo();" > /var/www/html/info.php
firefox http://localhost/info.php
echo "${yellow} Done.${reset}"
