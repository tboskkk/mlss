	.syntax unified
	.text

	thumb_func_start sub_805D9CC
sub_805D9CC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_805D0DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_805D93C
	adds r0, r4, #0x0
	bl sub_805D288
	adds r4, #0x94
	ldr r0, [r4, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
