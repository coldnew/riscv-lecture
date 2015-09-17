CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O3 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example3.o

default: example3

.PHONY: default clean

example3: $(objects)
	$(CC) -o $@ $^

example3.o: example3.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example3

spike: example3
	spike pk ./example3
