#!/bin/sh
apt-get update; apt-get install nginx -y
wget https://github.com/sibuk76/reverse_proxy/blob/main/sites-available.tgz
cd /root/
tar -xf sites-available.tgz -C /etc/nginx/
unlink /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/lb2-reverse-proxy.conf /etc/nginx/sites-enabled/lb2-reverse-proxy.conf
ln -s /etc/nginx/sites-available/lb3-reverse-proxy.conf /etc/nginx/sites-enabled/lb3-reverse-proxy.conf
ln -s /etc/nginx/sites-available/lb4-reverse-proxy.conf /etc/nginx/sites-enabled/lb4-reverse-proxy.conf
ln -s /etc/nginx/sites-available/lb5-reverse-proxy.conf /etc/nginx/sites-enabled/lb5-reverse-proxy.conf
ln -s /etc/nginx/sites-available/lb6-reverse-proxy.conf /etc/nginx/sites-enabled/lb6-reverse-proxy.conf
ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
service nginx restart
