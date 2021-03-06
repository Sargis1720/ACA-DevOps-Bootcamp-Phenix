#!/bin/bash

# This is the command information about how much to use and how much is left on disk
disk=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}')

# This is the command information about how much percentage to use CPU
cpu=$(top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' )

# This is the command information about how much to use and how much is left on memory
memory=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
 
# This loop displays all the above information on the html file
while true ; do
        echo "$disk <br>" >> /var/www/bootcamp_aca/index.html
        echo "$cpu <br>" >> /var/www/bootcamp_aca/index.html
        echo "$memory <br>" >> /var/www/bootcamp_aca/index.html
        sleep 10
done
