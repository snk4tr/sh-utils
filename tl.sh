#!/usr/bin/env bash

fileName=$1
numLines=$2

if [[ ! -n ${fileName}  ]]; then
    echo "Argument error!"
    exit
fi

# Default number of lines in `tail`.
n=10

# If user specified number of lines, reassign it and use new value.
if [[ -n ${numLines} ]]; then
    n=${numLines}
fi

tail -f ${fileName} -n ${n} | bat --paging=never -l log