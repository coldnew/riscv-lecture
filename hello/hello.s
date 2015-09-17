.text
_start: .global _start

# sys_write ( fd, pstr, len )
# a7=64 r0 r1 r2
	li a0, 1   # fd <- stdout
	la a1, msg # pstr <- *msg
	li a2, 14  # len <- 14
	li a7, 64  # syscall <- sys_write
	scall      # system call

# sys_exit ( exitcode )
# a7=93 r0
	li a0, 0   # exitcode <- 0
	li a7, 93  # syscall <- sys_exit
	scall      # system call

msg:
	.asciz "Hello, world!\n"
	.end
