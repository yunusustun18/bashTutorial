#!/bin/bash

function buyuk() {
    if [ $x -gt $y ]; then
        echo $x
    else
        echo $y
    fi
}

if [ $# -lt 2 ]; then
    echo "iki sayı girmelisin"
    exit
fi

x=$1
y=$2

if ! [[ $x =~ ^[:blank:]*[0-9]*[:blank:]*$ && $y =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
    echo "hatalı giriş!! sadece sayı giriniz"
    exit
fi

buyuk