#!/bin/bash

path=$(cat /etc/nginx/sites-enabled/default | head -5 | tail -1 | awk '{print $2}' | cut -c 1-21)

mkdir $path

cd $path
touch index.html
#echo > index.html 

