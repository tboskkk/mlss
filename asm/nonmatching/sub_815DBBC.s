	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0x0
	movs r1, #0x3A
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	beq _0815DBD4
	cmp r0, #0x01
	beq _0815DBEC
	b _0815DC84
_0815DBD4:
	ldrh r0, [r3, #0x3C]
	subs r0, #0x01
	strh r0, [r3, #0x3C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0815DC84
	movs r0, #0xC8
	strh r0, [r3, #0x3C]
	ldrh r0, [r3, #0x3A]
	adds r0, #0x01
	strh r0, [r3, #0x3A]
	b _0815DC84
_0815DBEC:
	movs r2, #0x28
	adds r2, r2, r3
	mov r12, r2
	ldr r0, _0815DC80 @ =0x08198584
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x11
	mov r8, r1
	adds r4, r3, #0x0
	movs r6, #0x00
	movs r7, #0x04
_0815DC02:
	mov r2, r12
	adds r1, r2, r6
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0815DC64
	adds r0, r3, #0x0
	adds r0, #0x14
	adds r5, r0, r6
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bne _0815DC64
	adds r0, r3, #0x0
	adds r0, #0x1E
	adds r2, r0, r6
	ldrh r0, [r2, #0x00]
	adds r0, #0x04
	strh r0, [r2, #0x00]
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r9
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815DC3E
	adds r0, #0x3F
_0815DC3E:
	lsls r0, r0, #0x0A
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	movs r1, #0x0A
	cmp r0, #0x00
	beq _0815DC4C
	lsrs r1, r0, #0x10
_0815DC4C:
	ldr r0, [r4, #0x00]
	strh r1, [r0, #0x04]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	mov r2, r8
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _0815DC64
	movs r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	strh r1, [r0, #0x04]
_0815DC64:
	adds r4, #0x04
	adds r6, #0x02
	subs r7, #0x01
	cmp r7, #0x00
	bge _0815DC02
	ldrh r0, [r3, #0x3C]
	subs r0, #0x01
	strh r0, [r3, #0x3C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0815DC84
	movs r0, #0x01
	b _0815DC86
	.byte 0x00, 0x00
_0815DC80: .4byte 0x08198584
_0815DC84:
	movs r0, #0x00
_0815DC86:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
