#!/bin/bash
sudo apt-get update
sudo apt-get install -y wget python python-dev gcc awscli
sudo apt-get -y remove python-pip
wget https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py
sudo pip install mxnet==0.12.1 # Don't use --upgrade: this could force numpy to be rebuilt from source
/bin/rm -f get-pip.py
