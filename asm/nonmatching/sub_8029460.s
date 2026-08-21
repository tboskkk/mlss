	.syntax unified
	.text

	thumb_func_start sub_8029460
sub_8029460:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x1C]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	ldr r1, _08029498 @ =0x06010400
	movs r2, #0x98
	lsls r2, r2, #0x03
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, [r5, #0x1C]
	ldr r0, [r0, #0x0C]
	ldr r0, [r0, #0x08]
	ldr r1, _0802949C @ =0x060108C0
	movs r2, #0xA0
	lsls r2, r2, #0x03
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08029498: .4byte 0x06010400
_0802949C: .4byte 0x060108C0
