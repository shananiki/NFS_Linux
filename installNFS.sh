#!/bin/bash

sudo apt-get install nfs-kernel-server -y
sudo mkdir /home/NFS

sudo chown -R pi:pi /home/NFS
sudo find /home/NFS -type d -exec chmod 755 {} \;
sudo find /home/NFS -type f -exec chmod 644 {} \;

echo '/home/NFS *(rw,sync,subtree_check,all_squash,no_root_squash)' | sudo tee -a /etc/exports
