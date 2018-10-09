#!/bin/sh
git clone https://github.com/tjosephcarroll/iris-cloud-init.git
cd iris-cloud-init
sudo chmod 775 *
./ISC.sh
cd ..
sudo rm -r iris-cloud-init