#!/bin/bash
# script with pori and feri dana

sudo apt-get update 
sudo apt -y full-upgrade
sudo apt-get install git zsh curl zip unzip wget -y

sudo apt install gpg curl gnupg2 software-properties-common apt-transport-https lsb-release ca-certificates -y
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7AE645C0CF8E292A
echo "deb http://repo.pritunl.com/stable/apt $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/pritunl.list
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt install mongodb-org  pritunl -y
server_ip="$(curl ifconfig.co)"
sudo systemctl start pritunl mongod
sudo systemctl enable pritunl mongod


echo "run this Command:"
echo " "
echo 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
echo " "
echo " "
echo "run this for setup:"
echo " "
echo "sudo pritunl setup-key"
echo " "
echo "Please open Server , and config it"
echo "https://"$server_ip
echo " "
echo "Kind regrad, Feri Dana";
