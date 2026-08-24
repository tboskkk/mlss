	push {r4, r5, lr}
	add sp, #-0x004
	adds r3, r0, #0x0
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	subs r1, #0x16
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802C452
	cmp r2, #0x00
	ble _0802C46E
	b _0802C46C
_0802C452:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802C466
	cmp r2, #0x00
	bgt _0802C46C
_0802C466:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x0A
	bne _0802C46E
_0802C46C:
	subs r2, #0x01
_0802C46E:
	ldr r1, _0802C4C4 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r4, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	movs r4, #0x00
	strb r2, [r0, #0x00]
	ldr r0, [r3, #0x1C]
	ldr r2, [r0, #0x10]
	ldr r1, _0802C4C8 @ =0x0839F954
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldrb r3, [r0, #0x02]
	adds r1, r3, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x05
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x0A
	ldr r2, _0802C4CC @ =0x06010DC0
	adds r1, r1, r2
	ldr r2, _0802C4D0 @ =0x0839F962
	adds r3, r3, r2
	ldrb r2, [r3, #0x00]
	lsls r2, r2, #0x05
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802C4C4: .4byte 0x00000352
_0802C4C8: .4byte 0x0839F954
_0802C4CC: .4byte 0x06010DC0
_0802C4D0: .4byte 0x0839F962
