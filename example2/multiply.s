	.text
	.global multiply
multiply:
	mul a0, a0, a1
	ret
	.type multiply, function
	.size multipy, .-multiply

	.global multiplyadd
multiplyadd:
	mul a0, a0, a1
	add a0, a0, a2
	ret
	.type multiplyadd, function
	.size multiplyadd, .-multiplyadd
	
	.global multiplysub
multiplysub:
	mul a0, a0, a1
	sub a0, a0, a2
	ret
	.type multiplysub, function
	.size multiplysub, .-multiplysub
	.end
