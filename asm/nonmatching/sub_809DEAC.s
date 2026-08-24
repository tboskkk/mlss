	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x8C
	movs r1, #0x02
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _0809DECE
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	ble _0809DF18
_0809DECE:
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0809DEE2
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0809DEE2:
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0xA0
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	movs r5, #0x02
	ldsh r0, [r3, r5]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0809DF18
	movs r0, #0x00
	strh r0, [r2, #0x00]
	movs r1, #0x02
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809DF18:
	ldr r5, [r4, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809DF42
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _0809DF42
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r5, #0x4C]
_0809DF42:
	ldr r0, [r4, #0x28]
	ldr r5, _0809DFB0 @ =0x00000113
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0809DFA6
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DF5C
	adds r1, #0xFF
_0809DF5C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DF66
	adds r2, #0xFF
_0809DF66:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0xA0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
	ldr r0, _0809DFB4 @ =0x0809E439
	str r0, [r4, #0x4C]
_0809DFA6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DFB0: .4byte 0x00000113
_0809DFB4: .4byte sub_809E438
