#!/bin/bash

# COLORS
reset=`tput sgr0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
white=`tput setaf 7`

clear
echo " ${red}██████╗ ██╗  ██╗██████╗ ███╗   ███╗██╗   ██╗ █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗"
echo " ${red}██╔══██╗██║  ██║██╔══██╗████╗ ████║╚██╗ ██╔╝██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║"
echo " ${red}██████╔╝███████║██████╔╝██╔████╔██║ ╚████╔╝ ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║"
echo " ${red}██╔═══╝ ██╔══██║██╔═══╝ ██║╚██╔╝██║  ╚██╔╝  ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║"
echo " ${red}██║     ██║  ██║██║     ██║ ╚═╝ ██║   ██║   ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║"
echo " ${red}╚═╝     ╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝"
echo "${reset}"

echo " ${yellow}Installing...${reset}"
apt install -y phpmyadmin
echo "${white}Done.${reset}"