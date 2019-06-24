#!/bin/sh

ifndef RISCV
	$(error RISCV has not been set)
endif

CC=$(RISCV)/bin/riscv64-unknown-elf-gcc
OBJDUMP=$(RISCV)/bin/riscv64-unknown-elf-objdump

.PHONY: clean knownfail-rv64 knownfail-rv32 runtest-rv32 runtest-rv64
all: help
rv32: runtest-rv32
rv64: runtest-rv64
help:
	@echo "Use 'make rv64' or 'make rv32'"
runtest-rv32: build-test-rv32 disass-test-rv32 check-dis-rv32 knownfail-rv32 ctest-rv32 allsuccess
runtest-rv64: build-test-rv64 disass-test-rv64 check-dis-rv64 knownfail-rv64 ctest-rv64 allsuccess
build-test-rv32: rv32/asm/xbgas.s
	@echo "...building $<"; CC=$(RISCV)/bin/riscv32-unknown-elf-gcc; $(CC) -c -o xbgas.o rv32/asm/xbgas.s
disass-test-rv32: build-test-rv32 xbgas.o
	@echo "...disass xbgas.o"; OBJDUMP=$(RISCV)/bin/riscv32-unknown-elf-objdump; $(OBJDUMP) -dC xbgas.o >> xbgas.out 2>&1
check-dis-rv32: disass-test-rv32 xbgas.out
	@echo "...diffing xbgas.out"; diff xbgas.out rv32/asm/xbgas.disass
knownfail-rv32:
	cd rv32/knownfail && CC=$(RISCV)/bin/riscv32-unknown-elf-gcc; make
ctest-rv32:
	cd rv32/c && CC=$(RISCV)/bin/riscv32-unknown-elf-gcc; make
build-test-rv64: rv64/asm/xbgas.s
	@echo "...building $<"; $(CC) -c -o xbgas.o rv64/asm/xbgas.s
disass-test-rv64: build-test-rv64 xbgas.o
	@echo "...disass xbgas.o"; $(OBJDUMP) -dC xbgas.o >> xbgas.out 2>&1
check-dis-rv64: disass-test-rv64 xbgas.out
	@echo "...diffing xbgas.out"; diff xbgas.out rv64/asm/xbgas.disass
knownfail-rv64:
	cd rv64/knownfail && make
ctest-rv64:
	cd rv64/c && make
allsuccess:
	@echo "All tests successful!"
clean:
	rm -Rf xbgas.o xbgas.out
	cd rv64/c && make clean
	cd rv32/c && make clean

