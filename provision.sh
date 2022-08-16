#!/bin/bash

echo "updating system packages"
sudo apt update

echo "install nginx"
sudo apt install -y nginx

echo 'copy website to server'
sudo cp -r /vagrant/website /var/www/website

echo "copy website.config file to sites-enabled nginx"
sudo cp /vagrant/website.config /etc/nginx/sites-enabled/website

echo 'copy viking to server'
sudo cp -r /vagrant/viking /var/www/viking

echo "copy viking.config file to sites-enabled nginx"
sudo cp /vagrant/website.config /etc/nginx/sites-enabled/viking

echo "restart the nginx service"
sudo systemctl reload nginx

echo "display device configuration"
sudo ifconfig

echo "display disk usage"
sudo df -h

echo "display website html"
curl 192.168.56.81:81

echo "display viking html"
curl 192.168.56.81:86