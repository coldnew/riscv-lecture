CC	= riscv64-unknown-elf-gcc
CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example6.o

default: example6

.PHONY: default clean

example6: $(objects)
	$(CC) -o $@ $^

example6.o: example6.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example6

spike: example6
	spike pk ./example6
