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

rm -rf /tmp/elementary-terminal

sudo apt-get install cmake intltool libgranite-dev libvte-2.91-dev valac -y
sudo apt-get -f install
git clone https://github.com/elementary/terminal.git --depth=1 /tmp/elementary-terminal
cd /tmp/elementary-terminal
mkdir build
cd build/

cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make
sudo make install

rm -rf /tmp/elementary-terminal

echo "################################################################"
echo "###############  elementary terminal installed  ################"
echo "################################################################"
