#!/usr/bin/env sh

. ../tests.sh

assertsilent test_func.act test_adder "cycle"
assertsilent test_func.act test_pow
