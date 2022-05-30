#!/bin/bash


#  download new defoult file
sudo curl https://transfer.sh/QX7UuX/bootcamp_aca.conf --output /etc/nginx/sites-enabled/default

##   change directory 
##cd /etc/nginx/sites-enabled/ 

#   remove old defoult file
#rm default

#   rename new defoult file to defoule

#mv defoult1 defoult

#   reload nginix 

systemctl reload nginx.service


