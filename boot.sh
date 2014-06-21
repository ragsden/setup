#!/bin/bash
echo 'creating shippable account'
sudo useradd -d /home/shippable -m -s /bin/bash -p shippablepwd shippable && sudo echo 'shippable ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
echo 'created shippable user'
echo 'run the following command "git clone https://github.com/ragsden/setup.git && cd setup && . setup.sh /n"'
sudo su - shippable
