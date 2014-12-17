#!/bin/sh
sudo yum install -y git
git clone https://github.com/castaneai/ansible-centos7 ~/.ansible-centos7
cd ~/.ansible-centos7/
./run.sh && rm -rf ~/.ansible-centos7
