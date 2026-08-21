	.syntax unified
	.text

	thumb_func_start sub_802BD2C
sub_802BD2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802BD4E
	b _0802BF9E
_0802BD4E:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r7, r6, r2
	ldr r3, [r7, #0x00]
	ldr r4, [r3, #0x0C]
	ldr r0, [r3, #0x34]
	cmp r4, r0
	bne _0802BD68
	ldr r1, [r3, #0x10]
	ldr r0, [r3, #0x38]
	cmp r1, r0
	bne _0802BD68
	b _0802BF56
_0802BD68:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r2, [r5, #0x00]
	ldr r0, [r2, #0x0C]
	subs r4, r4, r0
	mov r8, r4
	ldr r1, [r3, #0x10]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	mov r9, r1
	ldr r1, _0802BF10 @ =0x0000020A
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	lsrs r3, r1, #0x02
	movs r0, #0x01
	ands r3, r0
	mov r12, r3
	subs r0, #0x06
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x02
	adds r4, r6, r0
	movs r1, #0x00
	ldsh r3, [r4, r1]
	cmp r8, r3
	ble _0802BDB2
	ldr r1, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	adds r0, r0, r3
	str r0, [r1, #0x0C]
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802BDB2:
	movs r0, #0x00
	ldsh r3, [r4, r0]
	mov r1, r8
	cmn r1, r3
	bge _0802BDCE
	ldr r1, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	subs r0, r0, r3
	str r0, [r1, #0x0C]
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802BDCE:
	movs r0, #0x00
	ldsh r3, [r4, r0]
	cmp r9, r3
	ble _0802BDE8
	ldr r1, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	adds r0, r0, r3
	str r0, [r1, #0x10]
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802BDE8:
	movs r1, #0x00
	ldsh r3, [r4, r1]
	mov r0, r9
	cmn r0, r3
	bge _0802BE04
	ldr r1, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	subs r0, r0, r3
	str r0, [r1, #0x10]
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802BE04:
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0802BE10
	b _0802BF30
_0802BE10:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80
	ldr r2, [r7, #0x00]
	ldr r1, [r2, #0x0C]
	ldr r0, [r2, #0x34]
	cmp r1, r0
	beq _0802BE24
	b _0802BF24
_0802BE24:
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x38]
	cmp r1, r0
	bne _0802BF24
	ldr r3, [r2, #0x14]
	ldr r0, [r2, #0x3C]
	cmp r3, r0
	bne _0802BF1C
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _0802BF1C
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bne _0802BF1C
	ldr r0, [r1, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	cmp r0, r3
	blt _0802BF1C
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	adds r2, r0, #0x1
	strb r2, [r1, #0x00]
	movs r4, #0x00
	ldr r3, _0802BF14 @ =0x00000246
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x08
	beq _0802BE6E
	cmp r1, #0x0C
	bne _0802BE8E
_0802BE6E:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x0A
	bne _0802BE8E
	movs r0, #0x08
	eors r0, r1
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	adds r0, r6, #0x0
	bl sub_802E688
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802BE8E
	movs r4, #0x01
_0802BE8E:
	cmp r4, #0x00
	beq _0802BF60
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x01
	movs r3, #0x01
	bl sub_802E754
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r4, r6, r5
	ldr r0, [r4, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r3, r6, r1
	ldrh r2, [r3, #0x00]
	adds r5, #0x5C
	adds r1, r0, r5
	movs r5, #0x00
	strh r2, [r1, #0x00]
	ldrh r1, [r3, #0x00]
	ldr r2, _0802BF18 @ =0x0000023E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r2, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	subs r3, #0x5B
	adds r1, r1, r3
	strb r0, [r1, #0x00]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r0, r2
	strh r5, [r1, #0x00]
	adds r3, #0x09
	adds r0, r0, r3
	strh r5, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r2, [r0, #0x00]
	ldr r1, [r4, #0x00]
	adds r5, #0x0C
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	movs r4, #0x40
	orrs r0, r4
	movs r3, #0x80
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r5
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _0802BF60
_0802BF10: .4byte 0x0000020A
_0802BF14: .4byte 0x00000246
_0802BF18: .4byte 0x0000023E
_0802BF1C:
	movs r0, #0x9B
	lsls r0, r0, #0x02
	adds r1, r6, r0
	b _0802BF2A
_0802BF24:
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r1, r6, r2
_0802BF2A:
	movs r0, #0x00
	strb r0, [r1, #0x00]
	b _0802BF60
_0802BF30:
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r0, r6, r3
	mov r1, r10
	strb r1, [r0, #0x00]
	mov r2, r12
	cmp r2, #0x00
	beq _0802BF60
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x34]
	str r0, [r1, #0x0C]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x38]
	str r0, [r1, #0x10]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80
	b _0802BF60
_0802BF56:
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r0, r6, r3
	mov r5, r10
	strb r5, [r0, #0x00]
_0802BF60:
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0802BF9E
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r3, r6, r2
	ldr r0, [r3, #0x00]
	movs r5, #0xDA
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x00]
	ldrb r5, [r2, #0x15]
	movs r1, #0x15
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802BF9E
	strb r5, [r2, #0x11]
	ldr r0, [r3, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x15]
_0802BF9E:
	mov r0, r10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
