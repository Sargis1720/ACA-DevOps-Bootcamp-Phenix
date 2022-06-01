#!/bin/bash


#  download new defoult file
sudo curl https://transfer.sh/QX7UuX/bootcamp_aca.conf --output /etc/nginx/sites-enabled/default

#  check download

ls_var=$(ls /etc/nginx/sites-enabled/)
file_working_head=$(sudo nginx -t 2>&1 | awk '{print$NF}' | head -1)
file_working_tail=$(sudo nginx -t 2>&1 | awk '{print$NF}' | tail -1)
if [[ $ls_var == "default" ]]
then
	#  check  if enginx working corect ?
	if [[ $file_working_head == "ok" ]] || [[ $file_working_tail == "successful" ]]
	then 
		#reload nginx
		systemctl reload nginx.service
	else
		echo "HTML file is broken"
	fi
else
	echo "eror downloding HTML file"
fi

