#!/bin/bash

ip=$(ifconfig | head -2 | sed -n '1!p' | awk '{print $2}')
nmap=$(nmap -n -sn -T 5 $ip/24 | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')

for i in $nmap; do
    echo $i
done
