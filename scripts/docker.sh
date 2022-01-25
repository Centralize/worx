#!/bin/bash

# COLORS
reset=`tput sgr0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
white=`tput setaf 7`

clear
echo " ${red}██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗ "
echo " ${red}██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
echo " ${red}██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝"
echo " ${red}██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
echo " ${red}██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║"
echo " ${red}╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
echo "${reset}"

echo " ${yellow}Installing...${reset}"
apt-get remove -y docker docker-engine docker.io containerd runc
apt-get update
apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
docker ps -a
echo "${white}Done.${reset}"