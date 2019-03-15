#!/bin/bash

systemctl stop nginx
sudo apt-get install haproxy

gsutil cp gs://[YOUR_BUCKET]/proxy/nginx-web .
rm /etc/nginx/sites-enabled/default

mv /home/admin/nginx-web /etc/nginx/sites-available/nginx-web

systemctl start nginx