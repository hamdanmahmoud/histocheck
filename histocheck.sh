#!/bin/bash

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color
HISTFILE=~/.bash_history
last=10 # by default looking up last 10 commands

# grabbing searched sequence
sequence=$1

# setting temp options
TEMP=`getopt --long -o "l:" "$@"`
eval set -- "$TEMP"

# looking up flags and values
while true ; do
    case "$1" in
        -l ) # specifies number of previous commands to look into
            $last=$2
            shift 2
        ;;
        *)
            break
        ;;
    esac 
done;

printf "Searching $sequence in last $last commands...\n"

found_occurences=$(tail -n $last $HISTFILE | grep $sequence)

pretty_formatted=${found_occurences//$sequence/${RED}$sequence${NC}}

printf "${pretty_formatted}\n"
