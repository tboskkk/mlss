	.syntax unified
	.text

	thumb_func_start sub_816504C
sub_816504C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8164B58
	adds r5, r0, #0x0
	ldr r0, [r4, #0x38]
	bl sub_80184F4
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x38]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x20
	bl sub_8018218
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
