#!/bin/bash

a=0

while [ $a -le 10 ]; do
    echo $a
    ((a++))
done

while ((a < 20)); do
    echo $a
    ((a++))
done

for ((i = 0; i < 10; i++)); do
    echo $i
done

for i in ls pwd whoami id; do
    $i
done

for i in {0..100..5}; do
    echo $i
done

# terminal açmak
#gnome-terminal &
#xterm &
