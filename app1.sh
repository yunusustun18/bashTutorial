#!/bin/bash

function rand_dosya() {

    while [ 1 ]; do
        dosya="$RANDOM.txt"
        ls | grep -q $dosya
        if ! [ $? -eq 0 ]; then
            touch $dosya
            break
        fi
    done
}

rand_dosya

