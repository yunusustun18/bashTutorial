#!/bin/bash

yedekpath="$HOME/Desktop/yedek-$(date +%Y%m%d-%H%M%s)"

if ! [ -d yedekpath ]; then
    /bin/mkdir $yedekpath
fi

for i in $(/bin/ls $HOME/Desktop); do
    if [ -f $i ]; then
        echo "$i kopyalanıyor.."
        /bin/cp -p $i $yedekpath
    fi
done
