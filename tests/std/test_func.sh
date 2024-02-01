#!/usr/bin/env sh

. ../tests.sh

asserteq test_func.act test_pow "set a 0
watch a
cycle
set a 1
cycle
set a 0
cycle
set a 1
cycle" "[                  10] <[env]> a := 1"
