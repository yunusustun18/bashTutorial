#!/bin/bash

if [ $# -lt 2 ]; then
    echo "2. argümanı da girin"
    exit
fi

x=$1
y=$2

if ! [[ "$x" =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
    echo "yanlış sayı formatı"
    exit
fi

if ! [[ "$y" =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
    echo "yanlış sayı formatı"
    exit
fi

topla=$((x + y))
cikar=$((x - y))
carp=$((x * y))
bol=$((x / y))

echo "$1+$2=$topla"
echo "$1-$2=$cikar"
echo "$1*$2=$carp"
echo "$1/$2=$bol"

