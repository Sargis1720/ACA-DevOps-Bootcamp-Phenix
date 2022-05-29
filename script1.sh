#!/bin/bash
function check_if_installed() {
  check=$(which nginx)

  if [[ $check != "/usr/sbin/nginx" ]]; then
    echo "You have not installed nginx"
    sudo apt -y update
    sudo apt-get -y install nginx
  else
    echo "You have nginx installed already!"
  fi
}

check_if_installed
