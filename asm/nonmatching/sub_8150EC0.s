	.syntax unified
	.text

	thumb_func_start sub_8150EC0
sub_8150EC0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	str r3, [r5, #0x30]
	ldr r3, [r2, #0x00]
	ldr r4, [r2, #0x04]
	str r3, [r5, #0x0C]
	str r4, [r5, #0x10]
	ldr r0, [r1, #0x00]
	ldr r3, [r5, #0x0C]
	subs r0, r0, r3
	str r0, [r5, #0x0C]
	ldr r0, [r1, #0x04]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_8150C68
	adds r0, r5, #0x0
	bl sub_8150E38
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_8150DC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
