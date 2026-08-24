	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	ble _0806A088
	ldr r0, [r4, #0x10]
	ldr r2, _0806A084 @ =0x00000133
	adds r0, r0, r2
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	b _0806A106
_0806A084: .4byte 0x00000133
_0806A088:
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0806A0D0
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0AA
	adds r1, #0xFF
_0806A0AA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0B4
	adds r2, #0xFF
_0806A0B4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0BE
	adds r3, #0xFF
_0806A0BE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A0CC @ =0x00001D82
	bl sub_80DF024
	b _0806A102
	.byte 0x00, 0x00
_0806A0CC: .4byte 0x00001D82
_0806A0D0:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0E4
	adds r1, #0xFF
_0806A0E4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0EE
	adds r2, #0xFF
_0806A0EE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0F8
	adds r3, #0xFF
_0806A0F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A110 @ =0x00001D90
	bl sub_80DF024
_0806A102:
	ldr r0, _0806A114 @ =0x0806A119
	str r0, [r4, #0x4C]
_0806A106:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A110: .4byte 0x00001D90
_0806A114: .4byte sub_806A118
