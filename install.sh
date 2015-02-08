#!/bin/sh
test -e /usr/bin/which || yum install -y which
test -z $(which ansible-playbook) && yum install -y epel-release && yum install -y ansible
test -z $(which git) && yum install -y git
