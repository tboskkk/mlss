	.syntax unified
	.text

	thumb_func_start sub_8150DC8
sub_8150DC8:
	push {lr}
	adds r2, r0, #0x0
	cmp r1, #0x00
	bne _08150DDA
	ldrh r1, [r2, #0x2C]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	b _08150DE0
_08150DDA:
	ldrh r1, [r2, #0x2C]
	movs r0, #0x08
	orrs r0, r1
_08150DE0:
	strh r0, [r2, #0x2C]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
