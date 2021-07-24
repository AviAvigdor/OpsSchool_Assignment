#!/bin/bash

line="127.0.0.1 www.ascii-art.de"; sudo sed -i "/^$line/ c#$line" /etc/hosts
