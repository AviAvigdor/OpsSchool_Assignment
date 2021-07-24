#!/bin/bash

sudo sed -i -e '$a192.168.100.11 server2' /etc/hosts
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd reload
