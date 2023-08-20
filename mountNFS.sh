#!/bin/bash

# Unmount the partition if already mounted
sudo umount /dev/sda2

# Mount the partition to the specified directory
sudo mount /dev/sda2 /home/NFS

# Refresh the NFS exports
sudo exportfs -ra

# Start service
sudo systemctl start nfs-kernel-server


echo "Partition /dev/sda2 mounted to /home/NFS and NFS exports refreshed."
