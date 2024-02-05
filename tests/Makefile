SHELL:=/usr/bin/env bash
VERBOSE:=0

export VERBOSE=$VERBOSE

all: testfunc testfxp

testfunc:
	@cd std && ./test_func.sh

testfxp:
	@source ./tests.sh && cd math && assertsilent test_fxp.act test_conv_to_fxp
