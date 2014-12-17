#!/bin/sh
test -e /usr/bin/which || sudo yum install -y which
test -z $(which ansible-playbook) && sudo yum install -y epel-release && sudo yum install -y ansible
ansible-playbook common.yml 
