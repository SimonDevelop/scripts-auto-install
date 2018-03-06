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

rm -rf /tmp/elementary-scratch

sudo apt-get install meson libgail-3-dev libgee-0.8-dev libgtksourceview-3.0-dev libgtkspell3-3-dev libgranite-dev libpeas-dev libsoup2.4-dev libvala-0.34-dev libvte-2.91-dev libwebkit2gtk-4.0-dev libzeitgeist-2.0 valac -y
sudo apt-get -f install
git clone https://github.com/elementary/code.git --depth=1 /tmp/elementary-scratch
cd /tmp/elementary-scratch

meson build --prefix=/usr
cd build/
ninja test
sudo ninja install

rm -rf /tmp/elementary-scratch

echo "################################################################"
echo "################  elementary scratch installed  ################"
echo "################################################################"
