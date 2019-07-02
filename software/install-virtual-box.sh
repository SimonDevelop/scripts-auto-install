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

rm /tmp/virtual-box.deb

wget https://download.virtualbox.org/virtualbox/6.0.8/virtualbox-6.0_6.0.8-130520~Ubuntu~bionic_amd64.deb -O /tmp/virtual-box.deb
sudo dpkg -i /tmp/virtual-box.deb
sudo apt-get install -f -y

rm /tmp/virtual-box.deb

echo "################################################################"
echo "####################  virtualbox 6 installed  ####################"
echo "################################################################"
