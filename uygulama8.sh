#!/bin/bash

read -p "isminizi giriniz: " ilkisim ikincisim
if [ -z $ilkisim ]; then
    echo "isim boş girillemez"
    exit
fi
isim="$ilkisim $ikincisim"

read -p "soyisminizi giriniz: " soyisim
if [ -z $soyisim ]; then
    echo "soyisim boş girillemez"
    exit
fi

isim=$(echo $isim | tr [:upper:] [:lower:])
soyisim=$(echo $soyisim | tr [:upper:] [:lower:])
login="$ilkisim$ikincisim$soyisim"

read -p "shell olarak ksh mi yoksa bash mi isterseniz: " shell
if ! [[ $shell == "bash" || $shell == "ksh" ]]; then
    echo "bash ve ksh desteği bulunmaktadır"
    exit
fi

read -p "home dizininde oluşturulsun mu ? (E/h)" evethayir
if [[ $evethayir == "h" || $evethayir == "H" ]]; then
    evethayir=""
else
    evethayir="-m"
fi

echo "yeni bir user oluşturmak için girmeniz gereken komut"
echo "****************************************************"
echo "sudo useradd $evethayir -d /home/$login -s $shell -c \"$isim $soyisim\""

