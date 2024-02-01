#!/usr/bin/env sh

green='\e[0;32m'
reset='\033[0m'
red='\e[0;31m'

asserteq () {
    result=$(echo "$3" | actsim -Wlang_subst:off "$1" "$2" | tail -n1)
    if [ "$result" = "$4" ]; then
        echo "${green}[passed]${reset} $1 $2"
        return 0
    else
        echo "${red}[failed]${reset} $1 $2\n    \"$result\"\n != \"$4\""
        return 1
    fi
}
