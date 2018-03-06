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

rm -rf /tmp/elementary-files-manager

sudo apt-get install cmake libcanberra-dev libdbus-glib-1-dev libgail-3-dev libgee-0.8-dev libglib2.0-dev libgranite-dev libgtk-3-dev libnotify-dev libpango1.0-dev libplank-dev libsqlite3-dev libunity-dev libzeitgeist-2.0-dev valac -y
sudo apt-get -f install
git clone https://github.com/elementary/files.git --depth=1 /tmp/elementary-files-manager
cd /tmp/elementary-files-manager
mkdir build
cd build/

cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make all test
sudo make install

rm -rf /tmp/elementary-files-manager

echo "################################################################"
echo "############  elementary files manager installed  ##############"
echo "################################################################"
