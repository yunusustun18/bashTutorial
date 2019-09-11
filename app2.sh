#!/bin/bash

ip=$(ifconfig | head -2 | sed -n '1!p' | awk '{print $2}')
subnet=$(echo $ip | cut -d "." -f 1,2,3)

for i in {0..255}; do
    ip="$subnet.$i"
    result=$(ping -c 1 $ip)
    echo $result | grep -q ttl
    if [ $? -eq 0 ]; then
        echo $ip    
    fi
done
