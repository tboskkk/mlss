	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x28]
	adds r0, #0xB0
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0x06
	mov r8, r0
_0809DA08:
	ldr r0, _0809DAC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r2, r8
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809DA84
	adds r0, r7, #0x0
	ldr r1, _0809DAC8 @ =0x00004147
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x3C]
	str r0, [r4, #0x14]
	movs r0, #0xA0
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	str r6, [r4, #0x2C]
	ldr r0, _0809DACC @ =0x0809DDA5
	str r0, [r4, #0x4C]
	ldr r1, [r7, #0x28]
	adds r1, #0xB0
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_0809DA84:
	movs r0, #0x01
	add r8, r0
	mov r2, r8
	cmp r2, #0x07
	ble _0809DA08
	ldr r0, [r7, #0x28]
	ldr r3, _0809DAD0 @ =0x00000113
	adds r1, r0, r3
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DAD4 @ =0x0809DAD9
	str r0, [r7, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DAC4: .4byte 0x03000FD8
_0809DAC8: .4byte 0x00004147
_0809DACC: .4byte sub_809DDA4
_0809DAD0: .4byte 0x00000113
_0809DAD4: .4byte sub_809DAD8
