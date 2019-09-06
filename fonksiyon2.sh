#!/bin/bash

function variable(){
    isim=$1
    echo "ismim $isim"
}

isim=ahmet
echo "$isim"
variable ali
echo "$isim"

function variable(){
    local isim=$1
    echo "ismim $isim"
}

isim=ahmet
echo "$isim"
variable ali
echo "$isim"

