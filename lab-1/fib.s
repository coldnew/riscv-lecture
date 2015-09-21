	.text
	.align 2

	.global fibonacci
	.type fibonacci, function

fibonacci:
	# ADD/MODIFY CODE BELOW
	# PROLOG
	## push {a3, a4, a5, lr}         
  add sp, sp, -32
  sd      ra,24(sp)
	sd      s0,16(sp)
	add     s0,sp,32

	# R4 = R0 - 0 (update flags)
	# if(R0 <= 0) goto .L3 (which returns 0)

	# Compare R4 wtih 1
	# If R4 == 1 goto .L4 (which returns 1)

	# R0 = R4 - 1
	# Recursive call to fibonacci with R4 - 1 as parameter

	# R5 = R0
	# R0 = R4 - 2
	# Recursive call to fibonacci with R4 - 2 as parameter

	# R0 = R5 + R0 (update flags)

	## pop {a3, a4, a5, pc}		# EPILOG

  # END CODE MODIFICATION

.EPILOG:
  ld      ra,24(sp)
	ld      s0,16(sp)
	add     sp,sp,32        # EPILOG
	ret

.L3:
	li a0, 0	          		# R0 = 0
  j .EPILOG               

.L4:
	li a0, 1                # R0 = 1
	j .EPILOG

	.size fibonacci, .-fibonacci
	.end
