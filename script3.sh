#!/bin/bash

# This command cuts the path from /etc/nginx/sites-enabled/default file path bootcamp_aca
path=$(cat /etc/nginx/sites-enabled/default | head -5 | tail -1 | awk '{print $2}' | cut -c 1-21)

# Created directory bootcamp_aca from /var/www/
mkdir $path

cd $path

# Created HTML file
touch index.html
