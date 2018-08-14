#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Simon Micheneau
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

rm -rf /tmp/arc-osx-icons

sudo apt-get install build-essential autoconf automake pkg-config -y
sudo apt-get -f install
git clone https://github.com/iurrieta/Arc-OSX-Icons.git --depth=1 /tmp/arc-osx-icons
cp -r /tmp/arc-osx-icons/src/* ~/.icons/

rm -rf /tmp/arc-osx-icons

echo "################################################################"
echo "##################  arc osx icons installed  ###################"
echo "################################################################"
