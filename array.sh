#!/bin/bash

arr=("linux" 'windows' 'unix')

echo "${arr[@]}"
echo "${arr[0]}"
# tüm dizi index gösterir
echo "${!arr[@]}"
# dizinin eleman sayısı
echo "${#arr[@]}"

arr[3]="mac"

echo "${arr[@]}"

unset arr[2]
echo "${!arr[@]}"
echo "${arr[@]}"