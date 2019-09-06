#!/bin/bash

if [ $# -lt 1 ]; then
    echo "lütfen dosya yolunu giriniz !!!"
    echo "kullanım şekli: $0 dosyaismi"
    exit
fi

if [ -d $1 ]; then
    echo "$1 bir klasördür"
elif [ -f $1 ]; then
    echo "$1 normal bir dosyadır"
else
    echo "$1 özel bir dosyadır"
fi
