#!/bin/bash

echo 1+1
echo $((1 + 1))

sayi1=25
sayi2=5

echo $((sayi1 + sayi2))
echo $((sayi1 - sayi2))
echo $((sayi1 * sayi2))
echo $((sayi1 / sayi2))
echo $((sayi1 % sayi2))

echo $(expr $sayi1 + $sayi2)
echo $(expr $sayi1 - $sayi2)
# * asterix karakter olduğu için hata verir, escape karakter konulur önüne
echo $(expr $sayi1 \* $sayi2)
echo $(expr $sayi1 / $sayi2)
echo $(expr $sayi1 % $sayi2)

echo "20.5+5" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5/5" | bc
echo "20.5%5" | bc

echo "scale=2;20.5/5" | bc
echo "scale=2;$sayi1+$sayi2" | bc
echo "scale=2;$sayi1-$sayi2" | bc
echo "scale=2;$sayi1*$sayi2" | bc
echo "scale=2;$sayi1/$sayi2" | bc
echo "scale=2;$sayi1%$sayi2" | bc

echo "scale=2;sqrt(4)" | bc
echo "scale=2;sqrt($sayi2)" | bc

echo "4^3" | bc
echo "$sayi2^3" | bc