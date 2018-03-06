#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

rm /tmp/gitkraken-amd64.deb

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken-amd64.deb
sudo dpkg -i /tmp/gitkraken-amd64.deb
sudo apt-get install -f -y

rm /tmp/gitkraken-amd64.deb

echo "################################################################"
echo "#####################  gitkraken installed  ####################"
echo "################################################################"
