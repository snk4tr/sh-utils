#!/usr/bin/env bash


while true ; do
    clear
    gpustat
    echo "Press any key to quit"
    if read -t 3 -n 1 -s key; then
        echo "Iterrupted"
    exit
fi
done