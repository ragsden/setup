#!/bin/bash
echo 'creating shippable account'
sudo useradd -d /home/shippable -m -s /bin/bash -p shippablepwd shippable && sudo echo 'shippable ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
echo 'created shippable user'
echo 'run the following command "curl -s https://github.com/shippable/install/setup.sh | sudo sh"'
sudo su - shippable
