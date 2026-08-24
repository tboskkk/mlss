	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F9FC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r6, #0x01
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0805FA04 @ =0x0805FCC9
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	adds r5, r4, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0805F958
	adds r2, #0xFF
_0805F958:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _0805F962
	adds r3, #0xFF
_0805F962:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0805F96C
	adds r0, #0xFF
_0805F96C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805FA08 @ =0x00004131
	bl sub_807BF34
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldr r0, _0805FA0C @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _0805FA10 @ =0x0805FD41
	str r0, [r3, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0805FA14 @ =0x0805FA19
	str r0, [r4, #0x4C]
_0805F9FC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805FA04: .4byte sub_805FCC8
_0805FA08: .4byte 0x00004131
_0805FA0C: .4byte sub_8087540
_0805FA10: .4byte sub_805FD40
_0805FA14: .4byte sub_805FA18
