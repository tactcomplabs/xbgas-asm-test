#!/bin/sh

CC=$(RISCV)/bin/riscv64-unknown-elf-gcc
SRCS = $(wildcard *.s)
OBJS = $(SRCS:.s=.o)

.PHONY: check-env

all: msg check-env $(OBJS) success
%.o: %.s
	@echo "...testing $<"; $(CC) -c -o $@ $< || exit 0
check-env:
ifndef RISCV
	$(error RISCV has not been set)
endif
msg:
	@echo "...running KnownFail test"
success:
	@echo "KnownFail Success!"
