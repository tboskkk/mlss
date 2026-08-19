	.syntax unified
	.text

	thumb_func_start sub_8150E2C
sub_8150E2C:
	ldrh r2, [r0, #0x2C]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	strh r1, [r0, #0x2C]
	bx lr
