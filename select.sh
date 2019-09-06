#!/bin/bash

select iller in ankara istabul izmir antalya konya eskişehir bursa; do
    if [ $iller == "ankara" ]; then
        echo "ankara seçildi"
    elif [ $iller == "antalya" ]; then
        echo "antalya seçildi"
    else
        echo "herhangi biri seçildi"
    fi
done
