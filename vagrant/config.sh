#!/bin/bash

echo 'exclude=docker-1.10* docker-1.9*' >> /etc/yum.conf
yum update -y
yum install git vim docker -y
systemctl enable docker
systemctl start docker.service
