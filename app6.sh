#!/bin/bash

for ((i = 0; i < 11; i++)); do
    echo $RANDOM >>num
done

cat num | sort -n

rm num
