	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x0C
	ble _0809EE3C
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0809EE04
	adds r0, #0xFF
_0809EE04:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r5, r0, r1
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0809EE16
	adds r0, #0xFF
_0809EE16:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r2, r0, r1
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809EE28
	adds r3, #0xFF
_0809EE28:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	adds r3, r3, r0
	str r4, [sp, #0x000]
	ldr r0, _0809EE7C @ =0x00002622
	adds r1, r5, #0x0
	bl sub_80DF024
_0809EE3C:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809EE74
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809EE80 @ =0x0809EE85
	str r0, [r4, #0x4C]
_0809EE74:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809EE7C: .4byte 0x00002622
_0809EE80: .4byte sub_809EE84
