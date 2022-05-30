#!/bin/bash
disk=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}')
cpu=$(top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' )
memory=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
 
while true ; do
        echo "$disk <br>" >> /var/www/bootcamp_aca/index.html
        echo "$cpu <br>" >> /var/www/bootcamp_aca/index.html
        echo "$memory <br>" >> /var/www/bootcamp_aca/index.html
        sleep 5
done
