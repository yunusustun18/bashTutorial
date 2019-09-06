#!/bin/bash

while :; do
    read -p "kontrol etmek istediğiniz web sitesini giriniz: " site
    if [ -z $site ]; then
        echo "bi giriş yapmadınız"
    elif [ $site == "q" -o $site == "Q" ]; then
        echo "çıkış yaptınız"
        exit
    fi

    curl -s --head -w %{http_code} $site | head -1 | awk '{print $2}'
    

done
