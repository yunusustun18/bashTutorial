#!/bin/bash

sayi=11

if [ $sayi != 7 ]; then
    echo "eşit değil"
fi

if (($sayi == 1)); then
    echo "sayı 1'e eşit"
elif (($sayi < 0)); then
    echo "bu negatif sayi"
else
    echo "pozitif sayı"
fi

ad=qwe

if [ $ad == "yunus" ]; then
    echo "bu yunus"
elif [ $ad == "yağmur" ]; then
    echo "bu yağmur"
else
    echo "bi cisim yaklaşıyor"
fi

if [[ $ad > b ]]; then
    echo "bu b'den küçük"
else
    echo "bu b'den büyük"
fi

yas=11

if [[ $yas > 18 && $yas < 30 ]]; then
    echo "bu insan genç"
else
    echo "ne olduğu belli değil"
fi

if [[ $yas > 18 || $yas < 30 ]]; then
    echo "bu insan genç"
else
    echo "ne olduğu belli değil"
fi

