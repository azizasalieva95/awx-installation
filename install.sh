#!/bin/bash
yum -y install epel-release
yum -y install $(cat packages)
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install docker-ce
systemctl start docker
systemctl enable docker
cd ~/awx-installation/awx/installer/ && ansible-playbook - inventory install.yml -vv
