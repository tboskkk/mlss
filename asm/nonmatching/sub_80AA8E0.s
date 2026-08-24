	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080AAA38 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0xCD
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r4, r0, #0x0
	subs r4, #0x0C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _080AA91A
	adds r0, #0xFF
_080AA91A:
	asrs r0, r0, #0x08
	cmp r0, r4
	bge _080AA950
	ldr r0, [r7, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080AA938
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
_080AA938:
	ldr r2, _080AAA3C @ =0x03001038
	ldr r0, _080AAA40 @ =0x0819832C
	ldr r1, _080AAA44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x18]
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
_080AA950:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	adds r4, r0, #0x0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r9, r1
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080AA990
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AA990:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AA9A0
	b _080AAECA
_080AA9A0:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080AA9A8
	movs r2, #0x00
_080AA9A8:
	ldr r0, _080AAA48 @ =0x00007FFF
	cmp r2, r0
	ble _080AA9B0
	adds r2, r0, #0x0
_080AA9B0:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x00C]
	cmp r1, r2
	bgt _080AA9CA
	mov r1, r10
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA9CC
_080AA9CA:
	movs r1, #0x00
_080AA9CC:
	cmp r1, #0x00
	beq _080AAAB0
	ldr r2, _080AAA38 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AAA4C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA9F4
	movs r1, #0x33
_080AA9E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA9E8
_080AA9F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAA08
	movs r1, #0x33
_080AA9FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA9FC
_080AAA08:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAA1C
	movs r1, #0x33
_080AAA10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA10
_080AAA1C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAAA8
	movs r1, #0x03
_080AAA26:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAA30
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAA30:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAA26
	b _080AAAA8
_080AAA38: .4byte 0x03000FD8
_080AAA3C: .4byte 0x03001038
_080AAA40: .4byte 0x0819832C
_080AAA44: .4byte 0x08198220
_080AAA48: .4byte 0x00007FFF
_080AAA4C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAA62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA56
_080AAA62:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAA78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA6C
_080AAA78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAA8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA82
_080AAA8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAAA8
	movs r1, #0x10
_080AAA98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAAA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAAA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAA98
_080AAAA8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AAAB0:
	adds r1, r4, #0x0
	mov r2, r9
	cmp r1, #0x00
	bge _080AAABA
	movs r1, #0x00
_080AAABA:
	mov r4, r9
	cmp r4, #0x00
	bge _080AAAC2
	movs r2, #0x00
_080AAAC2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AAACC
	adds r1, r0, #0x0
_080AAACC:
	ldr r0, _080AABC0 @ =0x00007FFF
	cmp r2, r0
	ble _080AAAD4
	adds r2, r0, #0x0
_080AAAD4:
	cmp r2, r1
	bge _080AAADA
	adds r1, r2, #0x0
_080AAADA:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AAAF0
	ldr r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	ble _080AAAF2
_080AAAF0:
	movs r1, #0x00
_080AAAF2:
	cmp r1, #0x00
	bne _080AAAF8
	b _080AAC40
_080AAAF8:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AABC4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AAB16
	b _080AAC40
_080AAB16:
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080AABC8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080AAC2E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AABCC
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080AAB76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB6A
_080AAB76:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAB8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB80
_080AAB8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AABA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB96
_080AABA2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAC2A
	movs r1, #0x10
_080AABAC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AABB6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AABB6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AABAC
	b _080AAC2A
	.byte 0x00, 0x00
_080AABC0: .4byte 0x00007FFF
_080AABC4: .4byte 0x0300034C
_080AABC8: .4byte 0x03000FD8
_080AABCC:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080AABE4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AABD8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AABD8
_080AABE4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AABFA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AABEE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AABEE
_080AABFA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAC10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAC04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAC04
_080AAC10:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAC2A
	movs r1, #0x10
_080AAC1A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAC24
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAC24:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAC1A
_080AAC2A:
	bl sub_807F448
_080AAC2E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	ldr r1, _080AAD14 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x00]
_080AAC40:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AAC4C
	b _080AAECA
_080AAC4C:
	mov r1, r9
	cmp r1, #0x00
	bge _080AAC54
	movs r1, #0x00
_080AAC54:
	ldr r0, _080AAD18 @ =0x00007FFF
	cmp r1, r0
	ble _080AAC5C
	adds r1, r0, #0x0
_080AAC5C:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080AAC72
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AAC74
_080AAC72:
	movs r2, #0x00
_080AAC74:
	cmp r2, #0x00
	bne _080AAC7A
	b _080AAD88
_080AAC7A:
	ldr r3, _080AAD1C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AAD14 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AAD20
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AACCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACBE
_080AACCA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AACE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACD4
_080AACE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AACF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACEA
_080AACF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAD7C
	movs r1, #0x10
_080AAD00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAD0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAD0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAD00
	b _080AAD7C
	.byte 0x00, 0x00
_080AAD14: .4byte 0x00000FFF
_080AAD18: .4byte 0x00007FFF
_080AAD1C: .4byte 0x03000FD8
_080AAD20:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAD36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD2A
_080AAD36:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAD4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD40
_080AAD4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAD62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD56
_080AAD62:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAD7C
	movs r1, #0x10
_080AAD6C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAD76
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAD76:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAD6C
_080AAD7C:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080AAECA
_080AAD88:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080AAD94
	b _080AAECA
_080AAD94:
	ldr r0, _080AAE4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AADA2
	b _080AAECA
_080AADA2:
	ldr r2, _080AAE50 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080AAECA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AAE54 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AAE58
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAE04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AADF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AADF8
_080AAE04:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAE1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE0E
_080AAE1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAE30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE24
_080AAE30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAEB4
	movs r1, #0x10
_080AAE3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAE44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAE44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAE3A
	b _080AAEB4
_080AAE4C: .4byte 0x0300034C
_080AAE50: .4byte 0x03000FD8
_080AAE54: .4byte 0x00000FFF
_080AAE58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAE6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE62
_080AAE6E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAE84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE78
_080AAE84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAE9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE8E
_080AAE9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAEB4
	movs r1, #0x10
_080AAEA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAEAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAEAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAEA4
_080AAEB4:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AAECA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080AAF44
	ldr r2, [sp, #0x008]
	mov r1, r9
	cmp r2, #0x00
	bge _080AAEDE
	movs r2, #0x00
_080AAEDE:
	cmp r1, #0x00
	bge _080AAEE4
	movs r1, #0x00
_080AAEE4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AAEEE
	adds r2, r0, #0x0
_080AAEEE:
	ldr r0, _080AAF38 @ =0x00007FFF
	cmp r1, r0
	ble _080AAEF6
	adds r1, r0, #0x0
_080AAEF6:
	cmp r1, r2
	bge _080AAEFC
	adds r2, r1, #0x0
_080AAEFC:
	mov r4, r10
	movs r0, #0x00
	ldsh r4, [r4, r0]
	mov r9, r4
	cmp r9, r2
	blt _080AAF16
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080AAF18
_080AAF16:
	movs r2, #0x00
_080AAF18:
	cmp r2, #0x00
	beq _080AAF44
	cmp r3, #0x01
	ble _080AAF44
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080AAF3C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080AAF40 @ =0x080AB5FD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080AB086
_080AAF38: .4byte 0x00007FFF
_080AAF3C: .4byte 0x00000FFF
_080AAF40: .4byte sub_80AB5FC
_080AAF44:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AAF54
	b _080AB086
_080AAF54:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x30
	mov r1, r8
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r9, r1
	cmp r2, #0x02
	beq _080AAF76
	cmp r2, #0x04
	bne _080AB028
_080AAF76:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080AAF7E
	adds r0, #0xFF
_080AAF7E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	subs r0, #0x08
	mov r12, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AAF98
	adds r0, #0xFF
_080AAF98:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AAFAE
	adds r3, #0xFF
_080AAFAE:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080AAFD8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AAFE8
_080AAFD8:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AAFE8:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080AAFF0
	adds r0, #0xFF
_080AAFF0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB098 @ =0x03001038
	ldr r0, _080AB09C @ =0x0819832C
	ldr r1, _080AB0A0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB00A
	adds r1, #0x3F
_080AB00A:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080AB028:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB038
	cmp r2, #0x04
	bne _080AB052
_080AB038:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB052:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB064
	cmp r1, #0x04
	bne _080AB080
_080AB064:
	ldr r2, _080AB0A4 @ =0x0000205F
	adds r0, r7, #0x0
	movs r1, #0x07
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
_080AB080:
	ldr r0, _080AB0A8 @ =0x080AB0AD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AB086:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB098: .4byte 0x03001038
_080AB09C: .4byte 0x0819832C
_080AB0A0: .4byte 0x08198220
_080AB0A4: .4byte 0x0000205F
_080AB0A8: .4byte sub_80AB0AC
