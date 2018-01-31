#!/bin/sh

CC=$(RISCV)/bin/riscv64-unknown-elf-gcc
OBJDUMP=$(RISCV)/bin/riscv64-unknown-elf-objdump

.PHONY: check-env clean knownfail
all: runtest
runtest: check-env clean build-test disass-test check-dis knownfail ctest allsuccess
build-test: test/asm/xbgas.s
	@echo "...building $<"; $(CC) -c -o xbgas.o test/asm/xbgas.s
disass-test: build-test xbgas.o
	@echo "...disass xbgas.o"; $(OBJDUMP) -dC xbgas.o >> xbgas.out 2>&1
check-dis: disass-test xbgas.out
	@echo "...diffing xbgas.out"; diff xbgas.out test/asm/xbgas.disass
check-env:
ifndef RISCV
	$(error RISCV has not been set)
endif
knownfail:
	cd test/knownfail && make
ctest:
	cd test/c && make
allsuccess:
	@echo "All tests successful!"
clean:
	rm -Rf xbgas.o xbgas.out
	cd test/c && make clean

