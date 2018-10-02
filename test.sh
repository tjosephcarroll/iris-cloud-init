#!/bin/sh
sudo rm ISC.sh;sudo rm README.md; sudo rm test.sh
#sudo cp ../init.sh /var/lib/cloud/scripts/per-boot/init.sh
sudo rm -rf /var/lib/cloud/instance /var/lib/cloud/instances/*; sudo cloud-init modules -m final
