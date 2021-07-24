#!/bin/bash

server1: ssh-keygen -t rsa
server1: cat /home/vagrant/.ssh/id_rsa.pub | ssh vagrant@server1 'cat >> /home/vagrant/.ssh/authorized_keys'
