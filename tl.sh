#!/usr/bin/env bash

fileName=$1

if [[ ! -n "$fileName"  ]]; then
    echo "Argument error!"
    exit
fi

tail -f ${fileName} | bat --paging=never -l log