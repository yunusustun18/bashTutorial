#!/bin/bash

hak=7
rand=$(((RANDOM % 100) + 1))

while (($hak > 0)); do
    read -p "0 ile 100 arası bi sayı tahmin edin: " tahmin
    if [[ $tahmin == $rand ]]; then
        echo "bildiniz, doğru sayı: $rand"
        exit
    else
        ((hak -= 1))
        echo "kalan hak: $hak"
        if [[ $tahmin < $rand ]]; then
            echo "daha yukarı"
        else
            echo "daha aşağı"
        fi

    fi
done

