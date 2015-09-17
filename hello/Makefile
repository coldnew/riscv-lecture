AS	= riscv64-unknown-elf-as
LD	= riscv64-unknown-elf-ld
SFLAGS  = 
LDFLAGS =

objects	= hello.o

default: hello

.PHONY: default clean clobber

hello: $(objects)
	$(LD) $(LDFLAGS) -o $@ $^

hello.o: hello.s

%.o: %.s
	$(AS) -c $(SFLAGS) -o $@ $<

clean:
	rm -f $(objects) hello

spike: hello
	spike pk ./hello

