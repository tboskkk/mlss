	.syntax unified
	.text

	thumb_func_start sub_814AD24
sub_814AD24:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	adds r7, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r7, r1
	cmp r2, #0x00
	bne _0814AD98
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xE9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x50
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AD94 @ =0x0814A911
	b _0814B020
_0814AD94: .4byte sub_814A910
_0814AD98:
	cmp r2, #0x01
	bne _0814ADB8
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814ADB4 @ =0x0814A98D
	b _0814B020
_0814ADB4: .4byte sub_814A98C
_0814ADB8:
	cmp r2, #0x02
	bne _0814ADCC
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814ADC8 @ =0x0814A619
	b _0814B020
	.byte 0x00, 0x00
_0814ADC8: .4byte sub_814A618
_0814ADCC:
	cmp r2, #0x04
	beq _0814ADD2
	b _0814AF2C
_0814ADD2:
	movs r4, #0xB0
	lsls r4, r4, #0x03
	mov r9, r4
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	ldr r1, [r4, #0x00]
	ldr r3, [r1, #0x0C]
	ldr r5, _0814AF00 @ =0x00000242
	adds r0, r1, r5
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x0C]
	subs r3, r3, r0
	adds r5, r7, r5
	strh r3, [r5, #0x00]
	ldr r3, [r1, #0x10]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r1, r4
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x10]
	subs r3, r3, r0
	adds r4, r7, r4
	strh r3, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_813B178
	ldr r0, _0814AF04 @ =0x03001038
	mov r8, r0
	ldr r6, _0814AF08 @ =0x0819832C
	ldr r0, _0814AF0C @ =0x08198220
	subs r6, r6, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r5, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r4, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r6
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	movs r1, #0x01
	bl _call_via_r2
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r0, [r1, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r9
	strh r4, [r0, #0x00]
	adds r2, #0x7E
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	asrs r0, r1, #0x01
	ldr r4, _0814AF10 @ =0xFFE1C000
	adds r0, r0, r4
	bl _call_via_r2
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r7, r6
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AED0
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AED0:
	ldr r0, _0814AF14 @ =0x0000020F
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r10
	adds r1, r7, #0x0
	movs r2, #0x04
	bl sub_814B038
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x13
	bls _0814AF1C
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AF18 @ =0x0814A6C5
	b _0814B020
_0814AF00: .4byte 0x00000242
_0814AF04: .4byte 0x03001038
_0814AF08: .4byte 0x0819832C
_0814AF0C: .4byte 0x08198220
_0814AF10: .4byte 0xFFE1C000
_0814AF14: .4byte 0x0000020F
_0814AF18: .4byte sub_814A6C4
_0814AF1C:
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF28 @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AF28: .4byte sub_814B530
_0814AF2C:
	cmp r2, #0x07
	bne _0814AF4C
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AF48 @ =0x0814A815
	b _0814B020
_0814AF48: .4byte sub_814A814
_0814AF4C:
	cmp r2, #0x09
	bne _0814AF90
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF8C @ =0x0814B5D1
	b _0814B020
_0814AF8C: .4byte sub_814B5D0
_0814AF90:
	cmp r2, #0x0A
	bne _0814AFCC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r4, #0xE9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AFC4 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AFC8 @ =0x0814A911
	b _0814B020
	.byte 0x00, 0x00
_0814AFC4: .4byte sub_813B1E8
_0814AFC8: .4byte sub_814A910
_0814AFCC:
	cmp r2, #0x0B
	bne _0814AFE0
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AFDC @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AFDC: .4byte sub_814B530
_0814AFE0:
	cmp r2, #0x0C
	bne _0814B004
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, _0814B000 @ =0x0814AADD
	b _0814B020
	.byte 0x00, 0x00
_0814B000: .4byte sub_814AADC
_0814B004:
	cmp r0, #0x0D
	bne _0814B022
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814B034 @ =0x0814ABB1
_0814B020:
	str r0, [r1, #0x00]
_0814B022:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B034: .4byte sub_814ABB0
