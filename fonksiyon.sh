#!/bin/bash

function merhaba() {
    echo "merhaba dünya"
}

cikis() {
    echo "çıkış yaptınız"
}

merhaba
cikis

isim=ali

function parametre_yazdir() {
    echo "benim adım: $isim"
}

parametre_yazdir

function cikti() {
    echo $@
}

cikti 123 test qwe
