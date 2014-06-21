#!/bin/bash
FILE="/home/shippable/.ssh/id_rsa"
if [ -f $FILE ];
then
    echo "File $FILE exists"
else
    echo "generating keys"
    ssh-keygen
fi
echo "COPY THE FOLLOWING KEYS TO ALL REQUIRED MACHINES AND GIT ACCESS"
echo "================================"
cat $FILE.pub
echo "================================"
echo "Confirm?" && read input </dev/tty
cd home/shippable
sudo apt-get install -y git
sudo apt-get install -y python-dev
sudo apt-get update
sudo apt-get install -y python-pip
git clone git@github.com:Shippable/inst.git
cd inst
python installer.py
