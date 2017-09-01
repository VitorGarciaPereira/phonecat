#!/bin/bash

ssh ubuntu@54.194.13.84 <<EOF
sudo su
apt-get update
apt-get install build-essential libssl-dev
apt-get install build-essential chrpath libssl-dev libxft-dev -y
apt-get install libfreetype6 libfreetype6-dev -y
apt-get install libfontconfig1 libfontconfig1-dev -y
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
exit
exit
EOF
ssh ubuntu@54.194.13.84 <<EOF
sudo su
cd /var/www/html
nvm install 6.10.3
nvm use 6.10.3
apt-get install npm
npm install bower -g
[ -d phonecat ] && cd phonecat && git pull || git clone https://github.com/VitorGarciaPereira/phonecat.git && cd phonecat
npm install
bower install --allow-root
exit
exit
EOF
