#!/bin/bash

echo "updating system packages"
sudo apt update

echo "install nginx"
sudo apt install -y nginx

echo 'copy website to server'
sudo cp -r /vagrant/website /var/www/website/

echo "copy website.config file to sites-enabled nginx"
sudo cp /vagrant/website.config /etc/nginx/sites-enabled/website.config

echo "restart the nginx service"
sudo systemctl reload nginx

echo "display device configuration"
sudo ifconfig

echo "display disk usage"
sudo df -h

echo "display website html"
sudo curl localhost:81