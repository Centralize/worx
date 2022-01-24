#!/bin/bash

# COLORS
reset=`tput sgr0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`

clear
echo " ${red}███╗   ███╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██████╗ "
echo " ${red}████╗ ████║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██╔══██╗"
echo " ${red}██╔████╔██║███████║██████╔╝██║███████║██║  ██║██████╔╝"
echo " ${red}██║╚██╔╝██║██╔══██║██╔══██╗██║██╔══██║██║  ██║██╔══██╗"
echo " ${red}██║ ╚═╝ ██║██║  ██║██║  ██║██║██║  ██║██████╔╝██████╔╝"
echo " ${red}╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚═════╝ "
echo "${reset}"

echo "${yellow} Installing MariaDB-Server and MariaDB-Client${reset}"
apt install -y mariadb-server mariadb-client
systemctl enable mariadb.service
mysql_secure_installation
systemctl restart mariadb.service
echo "${yellow} Done.${reset}"
exit 0