	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0809DBAE
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0809DBAE
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DB90
	adds r1, #0xFF
_0809DB90:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DB9A
	adds r2, #0xFF
_0809DB9A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809DBA4
	adds r3, #0xFF
_0809DBA4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809DBF0 @ =0x0000227F
	bl sub_80DF024
_0809DBAE:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _0809DC3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, [r4, #0x30]
	ldr r2, [r3, #0x08]
	adds r1, r2, #0x0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0809DBF4
	adds r1, r0, #0x0
	subs r1, #0x01
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0809DC3C
	.byte 0x00, 0x00
_0809DBF0: .4byte 0x0000227F
_0809DBF4:
	adds r0, r2, #0x0
	bl sub_807FB64
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DC02
	adds r1, #0xFF
_0809DC02:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DC0C
	adds r2, #0xFF
_0809DC0C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809DC16
	adds r3, #0xFF
_0809DC16:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809DC44 @ =0x00002291
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DC48 @ =0x0809DC4D
	str r0, [r4, #0x4C]
_0809DC3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809DC44: .4byte 0x00002291
_0809DC48: .4byte sub_809DC4C
