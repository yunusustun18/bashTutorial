#!/bin/bash

wget www.bbc.com

url=$(grep href= index.html | cut -d / -f3 | sort | uniq | grep "\." | cut -d "\"" -f1 | uniq | grep -v bbc.com)
for i in $url; do
    echo $i
done

rm index.html
