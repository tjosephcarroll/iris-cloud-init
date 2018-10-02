#!/bin/sh
sudo rm -r /var/lib/cloud/scripts/per-boot/
sudo cp ../init.sh /var/lib/cloud/scripts/per-boot/init.sh
sudo rm -rf /var/lib/cloud/instance /var/lib/cloud/instances/*; sudo cloud-init modules -m final