	.text
	.global multiply
multiply:
	mulw a0, a0, a1
	ret
	.type multiply, function
	.size multipy, .-multiply

	.global multiplyadd
multiplyadd:
	mulw a0, a0, a1
	addw a0, a0, a2
	ret
	.type multiplyadd, function
	.size multiplyadd, .-multiplyadd
	
	.global multiplysub
multiplysub:
	mulw a0, a0, a1
	subw a0, a0, a2
	ret
	.type multiplysub, function
	.size multiplysub, .-multiplysub
	.end
