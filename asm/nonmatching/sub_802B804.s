	.syntax unified
	.text

	thumb_func_start sub_802B804
sub_802B804:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r10, r2
	cmp r5, #0x00
	bne _0802B820
	b _0802BC32
_0802B820:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x7F
	beq _0802B832
	b _0802BC32
_0802B832:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B846
	b _0802BC32
_0802B846:
	ldr r3, _0802B934 @ =0x00000216
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802B856
	b _0802BC32
_0802B856:
	ldr r7, _0802B938 @ =0x0000020F
	adds r0, r5, r7
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B866
	b _0802BC32
_0802B866:
	movs r0, #0xA1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r1, _0802B93C @ =0x00000272
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [r5, #0x0C]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r3, #0x72
	adds r2, r5, r3
	adds r7, #0x61
	adds r0, r5, r7
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r7, #0x1C
	adds r3, r5, r7
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	cmp r1, #0x00
	bgt _0802B8A2
	cmp r1, #0x00
	bge _0802B8A4
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0802B8A4
_0802B8A2:
	adds r2, r2, r1
_0802B8A4:
	str r2, [r3, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802B8E0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0802B8E0
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	mov r0, r9
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_804B028
_0802B8E0:
	ldr r2, _0802B940 @ =0x0000020D
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802B8F0
	b _0802BC32
_0802B8F0:
	ldr r3, _0802B944 @ =0x0000035B
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802B900
	b _0802BC32
_0802B900:
	movs r7, #0xCF
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x7F
	bne _0802B998
	movs r1, #0x89
	lsls r1, r1, #0x01
	add r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802B998
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r1, r9
	adds r7, r1, r0
	ldr r0, _0802B948 @ =0x00000113
	add r0, r9
	ldrb r6, [r0, #0x00]
	movs r2, #0xCF
	lsls r2, r2, #0x02
	adds r2, r2, r5
	mov r8, r2
	b _0802B97A
_0802B934: .4byte 0x00000216
_0802B938: .4byte 0x0000020F
_0802B93C: .4byte 0x00000272
_0802B940: .4byte 0x0000020D
_0802B944: .4byte 0x0000035B
_0802B948: .4byte 0x00000113
_0802B94C:
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0802B976
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802B976
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_804B028
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802B9F8
_0802B976:
	subs r6, #0x01
	adds r7, #0x04
_0802B97A:
	cmp r6, #0x00
	beq _0802B998
	ldr r4, [r7, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_804B028
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802B94C
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
_0802B998:
	mov r3, r10
	cmp r3, #0x00
	beq _0802B9A0
	b _0802BC32
_0802B9A0:
	movs r7, #0xCF
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x7F
	beq _0802B9B2
	b _0802BC32
_0802B9B2:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802B9E2
	ldr r1, _0802B9F0 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802B9E2
	ldr r0, _0802B9F4 @ =0x00000246
	add r0, r9
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x0C
	beq _0802B9E2
	cmp r1, #0x18
	bne _0802BA08
_0802B9E2:
	movs r1, #0x87
	lsls r1, r1, #0x01
	add r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802BA08
	b _0802BA16
_0802B9F0: .4byte 0x00000352
_0802B9F4: .4byte 0x00000246
_0802B9F8:
	movs r2, #0xCF
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x00]
	b _0802B998
_0802BA08:
	movs r1, #0x88
	lsls r1, r1, #0x01
	add r1, r9
	ldrb r0, [r1, #0x00]
	movs r2, #0x00
	cmp r0, #0x00
	beq _0802BA18
_0802BA16:
	adds r2, r0, #0x0
_0802BA18:
	cmp r2, #0x00
	bgt _0802BA1E
	b _0802BBEA
_0802BA1E:
	lsls r0, r2, #0x02
	adds r0, #0x28
	mov r3, r9
	adds r7, r3, r0
	ldr r0, _0802BB58 @ =0x0000010F
	add r0, r9
	ldrb r0, [r0, #0x00]
	ldr r1, _0802BB5C @ =0x00000111
	add r1, r9
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	subs r0, r0, r2
	adds r6, r0, #0x2
	cmp r6, #0x00
	bne _0802BA3E
	b _0802BBEA
_0802BA3E:
	ldr r0, _0802BB60 @ =0x00000272
	mov r8, r0
_0802BA42:
	ldr r1, [r7, #0x00]
	adds r0, r5, #0x0
	bl sub_804B028
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802BA52
	b _0802BBE0
_0802BA52:
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802BA64
	b _0802BBE0
_0802BA64:
	movs r2, #0xCF
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	asrs r1, r1, #0x17
	mov r0, r9
	adds r0, #0x28
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r3, _0802BB64 @ =0x0000020E
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	movs r2, #0x38
	ands r2, r0
	cmp r2, #0x08
	bne _0802BA94
	ldr r1, _0802BB68 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802BAAA
_0802BA94:
	cmp r2, #0x10
	beq _0802BA9A
	b _0802BBE0
_0802BA9A:
	ldr r2, _0802BB68 @ =0x00000352
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0802BAAA
	b _0802BBE0
_0802BAAA:
	ldr r3, _0802BB64 @ =0x0000020E
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x08
	beq _0802BABA
	b _0802BBEA
_0802BABA:
	movs r7, #0x83
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bhi _0802BACC
	b _0802BBEA
_0802BACC:
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	beq _0802BAD4
	b _0802BBEA
_0802BAD4:
	ldr r0, [r5, #0x0C]
	str r0, [sp, #0x000]
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r5, #0x10]
	adds r3, r0, r2
	ldr r6, [r4, #0x0C]
	adds r1, r4, r1
	movs r7, #0x00
	ldsh r1, [r1, r7]
	ldr r0, [r4, #0x10]
	adds r2, r0, r1
	mov r1, r8
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	mov r10, r0
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	add r0, r10
	asrs r1, r0, #0x01
	movs r7, #0x00
	mov r12, r7
	ldr r7, [sp, #0x000]
	subs r0, r7, r1
	cmp r0, r6
	bge _0802BB2A
	adds r0, r7, r1
	cmp r0, r6
	ble _0802BB2A
	ldr r1, _0802BB6C @ =0x00000276
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	subs r0, r3, r0
	cmp r0, r2
	bge _0802BB2A
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	cmp r0, r2
	bgt _0802BBC4
_0802BB2A:
	ldr r1, _0802BB70 @ =0x0839F94C
	ldrb r0, [r5, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r7, #0xD4
	lsls r7, r7, #0x02
	ldrb r0, [r7, r5]
	mov r10, r0
	mov r7, r10
	lsls r7, r7, #0x1C
	lsrs r0, r7, #0x1C
	ands r1, r0
	cmp r1, #0x00
	beq _0802BBBE
	cmp r0, #0x02
	beq _0802BBA4
	cmp r0, #0x02
	bhi _0802BB74
	cmp r0, #0x01
	beq _0802BB7E
	b _0802BBBE
	.byte 0x00, 0x00
_0802BB58: .4byte 0x0000010F
_0802BB5C: .4byte 0x00000111
_0802BB60: .4byte 0x00000272
_0802BB64: .4byte 0x0000020E
_0802BB68: .4byte 0x00000352
_0802BB6C: .4byte 0x00000276
_0802BB70: .4byte 0x0839F94C
_0802BB74:
	cmp r0, #0x04
	beq _0802BB7E
	cmp r0, #0x08
	beq _0802BBA4
	b _0802BBBE
_0802BB7E:
	mov r1, r8
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	lsrs r3, r0, #0x01
	ldr r2, [sp, #0x000]
	adds r1, r2, r3
	mov r7, r8
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	lsrs r2, r0, #0x01
	subs r0, r6, r2
	cmp r1, r0
	ble _0802BBBE
	ldr r0, [sp, #0x000]
	subs r1, r0, r3
	adds r0, r6, r2
	cmp r1, r0
	bge _0802BBBE
	b _0802BBC4
_0802BBA4:
	ldr r1, _0802BBDC @ =0x00000276
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	subs r0, r2, r0
	cmp r3, r0
	ble _0802BBBE
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	subs r0, r3, r0
	cmp r0, r2
	bge _0802BBBE
	movs r2, #0x01
	mov r12, r2
_0802BBBE:
	mov r3, r12
	cmp r3, #0x00
	beq _0802BBEA
_0802BBC4:
	movs r7, #0x83
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r1, r5, r2
	strb r0, [r1, #0x00]
	b _0802BBEA
	.byte 0x00, 0x00
_0802BBDC: .4byte 0x00000276
_0802BBE0:
	subs r6, #0x01
	adds r7, #0x04
	cmp r6, #0x00
	beq _0802BBEA
	b _0802BA42
_0802BBEA:
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x7F
	bne _0802BC32
	movs r1, #0x8D
	lsls r1, r1, #0x01
	add r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802BC32
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r7, r9
	adds r6, r7, r0
	ldr r0, _0802BC18 @ =0x0000011B
	add r0, r9
	ldrb r4, [r0, #0x00]
	b _0802BC20
	.byte 0x00, 0x00
_0802BC18: .4byte 0x0000011B
_0802BC1C:
	subs r4, #0x01
	adds r6, #0x04
_0802BC20:
	cmp r4, #0x00
	beq _0802BC32
	ldr r1, [r6, #0x00]
	adds r0, r5, #0x0
	bl sub_804B028
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802BC1C
_0802BC32:
	ldr r0, _0802BC94 @ =0x00000209
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802BD16
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0802BD16
	cmp r0, #0x02
	bhi _0802BD16
	movs r6, #0x82
	lsls r6, r6, #0x02
	add r6, r9
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802BC6E
	ldr r1, _0802BC98 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802BD16
_0802BC6E:
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r2, [r0, #0x00]
	cmp r2, #0x02
	bne _0802BC9C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_8049BD8
	ldr r3, _0802BC98 @ =0x00000352
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802BD08
	ldrb r0, [r6, #0x00]
	b _0802BCFA
_0802BC94: .4byte 0x00000209
_0802BC98: .4byte 0x00000352
_0802BC9C:
	ldr r7, _0802BCC8 @ =0x00000352
	adds r4, r5, r7
	ldrb r1, [r4, #0x00]
	movs r7, #0x80
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802BCCC
	cmp r2, #0x03
	bne _0802BCCC
	adds r0, r5, #0x0
	movs r1, #0x02
	bl sub_8049BD8
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802BD08
	ldrb r0, [r6, #0x00]
	b _0802BCFA
	.byte 0x00, 0x00
_0802BCC8: .4byte 0x00000352
_0802BCCC:
	ldr r1, _0802BD00 @ =0x00000341
	adds r0, r5, r1
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _0802BD1C
	adds r0, r5, #0x0
	bl sub_804FC90
	ldr r3, _0802BD04 @ =0x00000352
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802BD08
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
_0802BCFA:
	lsls r0, r0, #0x1B
	lsrs r2, r0, #0x1F
	b _0802BD0A
_0802BD00: .4byte 0x00000341
_0802BD04: .4byte 0x00000352
_0802BD08:
	movs r2, #0x00
_0802BD0A:
	mov r0, r9
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_802DDB4
	b _0802BD1C
_0802BD16:
	adds r0, r5, #0x0
	bl sub_804FC90
_0802BD1C:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
