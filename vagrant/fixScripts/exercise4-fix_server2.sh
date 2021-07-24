#!/bin/bash

sudo sed -i -e '$a192.168.100.10 server1' /etc/hosts
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd reload
