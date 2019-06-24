#!/bin/sh

CC=$(RISCV)/bin/riscv64-unknown-elf-gcc
OBJDUMP=$(RISCV)/bin/riscv64-unknown-elf-objdump
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
EXEC = $(OBJS:.o=.exe)
DIS = $(OBJS:.o=.diff)

.PHONY: check-env clean



all: clean msg check-env $(OBJS) $(EXEC) $(DIS) success
clean:
	@echo "...cleaning"; rm -Rf ./*.o ./*.diff ./*.exe
%.diff: %.o
	@echo "...disassembling $<"; $(OBJDUMP) -dC $< >> $@
	@echo "...diff'ing $@"; diff $@ $@.orig
%.o: %.s
	@echo "...testing $<"; $(CC) -O0 -c  -o $@ $<; 
%.exe: %.c
	@echo "...compiling $<"; $(CC) -o $@ $<;
check-env:
ifndef RISCV
	$(error RISCV has not been set)
endif
msg:
	@echo "...running C test"
success:
	@echo "Test Success!"
