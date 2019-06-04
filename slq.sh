#!/usr/bin/env bash

firstJobID=$1
lastJobId=$2  # included


regExp=${firstJobID}
for i in $(seq $(( ${firstJobID} + 1)) ${lastJobId}); do
    regExp+="\|${i}"
done

while true ; do
   clear
   echo -e "Queue info for job (jobs): ${regExp}\n"
   squeue -l | grep --colour=always ${regExp}
   echo "Press any key to quit"
   if read -t 3 -n 1 -s key; then
      echo "Iterrupted"
      exit
   fi