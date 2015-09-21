CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O1 -Wall
LDFLAGS = -fno-stack-protector

objects	= fibseq.o fib.o

default: fibseq

.PHONY: default clean spike

fibseq: $(objects)
	$(CC) $(LDFLAGS) -o $@ $^

fib.o: fib.s
fibseq.o: fibseq.c

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(objects) fibseq

SPIKE_CMD = spike pk ./fibseq &
CMD = yes 9 | $(call SPIKE_CMD) && sleep 1
spike: fibseq
	@yes 5 | $(call SPIKE_CMD)
	@sleep 1
	@yes 6 | $(call SPIKE_CMD)
	@sleep 1
	@yes 7 | $(call SPIKE_CMD)
	@sleep 1
