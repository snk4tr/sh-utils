#!/usr/bin/env bash

####################################  SCRIPT ARGUMENTS  ####################################

firstJobID=$1
lastJobId=$2  # included


####################################  MONITORING  ####################################

# If neither of arguments were specipied, get all jobs for the current user.
if [[ ! -n ${firstJobID} ]] && [[ ! -n ${lastJobId} ]]; then
    user=`whoami`
    while true ; do
    clear
    echo -e "Queue info for user ${user}\n"
    squeue -l -u ${user}
    echo "Press any key to quit"
    if read -t 3 -n 1 -s key; then
        echo "Iterrupted"
    exit
    fi
done    
fi

# If only first argument was specipied, monitor only this job id.
if [[ ! -n ${lastJobId} ]]; then
    lastJobId=${firstJobID}
fi

# Construct regexp for `grep`
regExp=${firstJobID}
for i in $(seq $(( ${firstJobID} + 1)) ${lastJobId}); do
    regExp+="\|${i}"
done

# Monitor all jobs by specified regexp
while true ; do
    clear
    echo -e "Queue info for job (jobs): ${regExp}\n"
    squeue -l | grep --colour=always ${regExp}
    echo "Press any key to quit"
    if read -t 3 -n 1 -s key; then
        echo "Iterrupted"
    exit
    fi
done