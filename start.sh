#!/bin/bash
#Sources by Tero Karvinen:
#https://github.com/terokarvinen/sirotin/blob/master/run.sh
#http://terokarvinen.com/2018/salt-quickstart-salt-stack-master-and-slave-on-ubuntu-linux

echo "Starting the start.sh script, Just wait..."
set -o verbose

setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
sleep 2s
sudo apt-get update
sleep 3s
sudo apt-get install -y salt-master salt-minion git
sleeps 2s
git clone https://github.com/OtsoR/LAMP.git

git config --global user.email "otsorauta@gmail.com"
git config --global user.name "Otso Rauta"
git config --global credential.helper "cache --timeout=3600"

echo -e 'master: localhost\nid: xubuntu'|sudo tee /etc/salt/minion

sudo systemctl restart salt-minion.service
sleep 5s
sudo salt-key -yA

echo "Salt-minion is now ready "
sleep 1s
echo "Next: /srv/salt folder and copying LAMP.git there"

sudo mkdir -p /srv/salt
cd LAMP/
sudo cp -r * /srv/salt
sudo salt '*' state.highstate 

echo "Start script is now finished hopefully..."
