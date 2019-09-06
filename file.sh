#!/bin/bash

# -e dosya mevcut
# -f dosya mevcut ve regular file
# -s dosya dolu mu boş mu
# -d klasör mü
# -r read hakları
# -w write hakları
# -x executable hakları

# [a-z] a-z arası
# [0-9] 0-9 arası
# ? özel karakter
# * herhangi birşey

echo -e "dosyanın ismini giriniz:\c"
read dosyaismi

if [ -f $dosyaismi ]; then
    if [ -w $dosyaismi ]; then
        echo "dosya yazılabilir Ctrl+d ile çıkabilirsiniz"
        cat >> $dosyaismi
    else
        echo "dosya yazılabilir değil"
    fi
else
    echo "dosya mevcut değil"
fi
