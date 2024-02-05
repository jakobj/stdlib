#!/usr/bin/env bash

green='\e[0;32m'
reset='\033[0m'
red='\e[0;31m'

assertsilent () {
    filename=$1
    process=$2
    command=$3
    result=$(echo "$command" | actsim -Wlang_subst:off "$filename" "$process" 2>&1)
    length=${#result}
    if [ $length = 0 ]; then
        if [ $VERBOSE = 1 ]; then
            echo -e "${green}[passed]${reset} $filename $process"
        fi
        return 0
    else
        echo -e ${red}[failed]${reset} $filename $process:\n$result
        return 1
    fi
}
