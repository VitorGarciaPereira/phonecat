#!/bin/bash

nvm install 6.10.3 <<EOF
nvm use 6.10.3
apt-get install npm
npm install bower -g
[ -d phonecat ] && cd phonecat && git pull || git clone https://github.com/VitorGarciaPereira/phonecat.git && cd phonecat
npm install
bower install --allow-root
exit
exit
EOF