	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r12, r0
	ldr r0, _08107988 @ =0x00000129
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _0810798C @ =0x03000FD8
	ldr r4, [r2, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	mov r9, r2
	cmp r0, #0x00
	bne _081078F4
	movs r2, #0xAC
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x3F
	ands r0, r1
	cmp r0, #0x20
	bne _081078F4
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	lsrs r4, r0, #0x02
	movs r2, #0x01
_081078CC:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _081078DE
	movs r3, #0x00
_081078DE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0x0
	asrs r0, r1
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _081078CC
	ldr r0, _08107988 @ =0x00000129
	add r0, r12
	strb r3, [r0, #0x00]
_081078F4:
	lsls r4, r3, #0x10
	asrs r2, r4, #0x10
	mov r8, r2
	cmp r2, #0x00
	bge _08107900
	b _08107A44
_08107900:
	mov r0, r12
	ldr r7, [r0, #0x10]
	ldr r0, [r7, #0x34]
	cmp r0, #0x00
	bne _0810790C
	b _08107A44
_0810790C:
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	beq _08107914
	b _08107A44
_08107914:
	ldrb r1, [r7, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _08107924
	b _08107A44
_08107924:
	ldr r0, _08107990 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r6, [r1, #0x38]
	ldr r5, [r6, #0x10]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x38]
	ldrb r0, [r1, #0x02]
	adds r0, #0x02
	strb r0, [r1, #0x02]
	strh r2, [r5, #0x06]
	strh r2, [r6, #0x06]
	mov r2, r12
	adds r2, #0xE4
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0C]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x02]
	adds r0, r0, r1
	subs r0, #0x0C
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r6, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x00]
	adds r0, r0, r1
	subs r0, #0x08
	ldr r1, _08107994 @ =0x000001FF
	mov r10, r1
	mov r1, r10
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strh r0, [r6, #0x02]
	asrs r0, r4, #0x11
	lsls r0, r0, #0x02
	adds r0, #0x89
	mov r1, r8
	cmp r1, #0x03
	ble _08107998
	movs r1, #0xC8
	lsls r1, r1, #0x08
	b _0810799C
	.byte 0x00, 0x00
_08107988: .4byte 0x00000129
_0810798C: .4byte 0x03000FD8
_08107990: .4byte 0x03000D74
_08107994: .4byte 0x000001FF
_08107998:
	movs r1, #0xB8
	lsls r1, r1, #0x08
_0810799C:
	orrs r1, r0
	strh r1, [r6, #0x04]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r0, #0x01
	ands r3, r0
	movs r4, #0x00
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x3F
	ands r0, r1
	cmp r0, #0x1F
	bhi _081079C0
	movs r4, #0x01
_081079C0:
	movs r1, #0x02
	ldsh r0, [r7, r1]
	ldr r1, [r2, #0x00]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0C
	lsls r0, r3, #0x10
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _081079DE
	lsls r0, r4, #0x01
	b _081079E2
_081079DE:
	lsls r0, r4, #0x01
	negs r0, r0
_081079E2:
	adds r1, r1, r0
	movs r0, #0xFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r7, #0x00]
	adds r0, r0, r7
	adds r0, #0x08
	ldr r2, _08107A54 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r5, #0x02]
	asrs r0, r3, #0x0F
	adds r0, #0x95
	ldr r2, _08107A58 @ =0xFFFFB800
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x04]
	movs r4, #0x8C
	lsls r4, r4, #0x01
	add r4, r12
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08107A28
	mov r0, r12
	adds r0, #0x08
	bl sub_8086E8C
	str r0, [r4, #0x00]
_08107A28:
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x0C]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x34]
	str r0, [r5, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r6, #0x0C]
	str r6, [r0, #0x10]
	ldr r0, [r5, #0x10]
	str r5, [r0, #0x0C]
_08107A44:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107A54: .4byte 0x000001FF
_08107A58: .4byte 0xFFFFB800
