#!/bin/bash

sudo chown -R vagrant:www-data /var/www/html
sudo chmod 755 -R /var/www/html
sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-available/000-default.conf
sudo service apache2 restart
