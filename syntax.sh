#!/bin/bash

# how many input
echo $#
# all input
echo $@
echo $*
# script input 
echo $0 $1 $2 $3

dizi=("$@")
echo ${dizi[0]} ${dizi[2]}

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

# yorum satır

# variable
ad=yunus
echo $ad
sayi=7
echo $sayi

# input
echo "isminiz:"
read isim
echo "ismim: $isim"

echo "isimler:"
read isim1 isim2 isim3
echo "isimler: $isim, $isim2, $isim3"

# -p one line input
read -p "isminiz: " isim
echo "ismim: $isim"

# -s silent password
read -p "isminiz: " isim
read -sp "şifreniz: " sifre
echo
echo $isim
echo $sifre

# reply last input
echo "isminizi girin:"
read
echo "isminiz: $REPLY"

# -a array variable
echo "isimler: "
read -a isimler
echo "isimler: ${isimler[0]},${isimler[1]},${isimler[2]}"

