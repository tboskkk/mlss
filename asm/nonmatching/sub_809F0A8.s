	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0809F0EE
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809F0C0
	adds r1, #0xFF
_0809F0C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809F0CA
	adds r2, #0xFF
_0809F0CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809F0D4
	adds r3, #0xFF
_0809F0D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809F0F8 @ =0x00002661
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	str r0, [r4, #0x2C]
	ldr r0, _0809F0FC @ =0x0809F195
	str r0, [r4, #0x4C]
_0809F0EE:
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_0809F0F8: .4byte 0x00002661
_0809F0FC: .4byte sub_809F194
