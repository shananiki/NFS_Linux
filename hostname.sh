#!/bin/bash
echo "Changing hostname in /etc/hostname"
sudo sh -c 'echo "rpiZ" > /etc/hostname'

echo "Changing hostname in /etc/hosts"
sudo sed -i 's/raspberry/rpiZ/g' /etc/hosts
