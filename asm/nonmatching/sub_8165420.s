	.syntax unified
	.text

	thumb_func_start sub_8165420
sub_8165420:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r1, [r4, #0x2C]
	ldr r0, [r4, #0x24]
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x28]
	strh r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
