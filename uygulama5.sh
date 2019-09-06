#!/bin/bash

sayi=$1
sonuc=1

if ! [[ $sayi =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
    echo "yanlış sayı formatı"
    exit
fi

for ((i = 1; i <= $sayi; i++)); do
    ((sonuc*=$i))
done

echo "sonuç: $sonuc"

