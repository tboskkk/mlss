	.syntax unified
	.text

	thumb_func_start sub_81650DC
sub_81650DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	bl sub_80184F4
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x38]
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
