	.syntax unified
	.text

	thumb_func_start sub_8150E44
sub_8150E44:
	push {lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldrh r1, [r2, #0x2C]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08150E5A
	movs r0, #0x01
	strh r0, [r2, #0x1C]
	strh r3, [r2, #0x18]
_08150E5A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
