#!/bin/bash

ip=$(ifconfig | head -2 | sed -n '1!p' | awk '{print $2}')
firefox &
nmap=$(nmap -p 80 --open $ip/24 -oN nmap.txt)
ip_list=$(cat nmap.txt | grep -v '#' | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$")
rm nmap.txt
for i in $ip_list; do
    firefox $i &
done
