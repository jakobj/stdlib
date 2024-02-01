#!/usr/bin/env sh

. ../tests.sh

assertsilent test_func.act test_adder "cycle"
assertsilent test_func.act test_pow
assertsilent test_func.act test_ceil_log2
assertsilent test_func.act test_max
assertsilent test_func.act test_min
assertsilent test_func.act test_repeat "cycle"
assertsilent test_func.act test_sign_extend "cycle"
