	.syntax unified
	.text

	thumb_func_start sub_80BA818
sub_80BA818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080BA93C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x03
	subs r1, r0, r1
	lsls r1, r1, #0x01
	mov r2, r9
	subs r2, r2, r1
	str r2, [sp, #0x008]
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080BA88A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BA88A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080BA89A
	b _080BAF66
_080BA89A:
	mov r1, r12
	cmp r1, #0x00
	bge _080BA8A2
	movs r1, #0x00
_080BA8A2:
	ldr r0, _080BA940 @ =0x00007FFF
	cmp r1, r0
	ble _080BA8AA
	adds r1, r0, #0x0
_080BA8AA:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080BA8C0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080BA8C2
_080BA8C0:
	movs r2, #0x00
_080BA8C2:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080BA9A8
	ldr r2, _080BA93C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080BA944
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BA8F6
	movs r1, #0x66
_080BA8EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BA8EA
_080BA8F6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BA90A
	movs r1, #0x66
_080BA8FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BA8FE
_080BA90A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BA91E
	movs r1, #0x66
_080BA912:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BA912
_080BA91E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BA9A0
	movs r1, #0x06
_080BA928:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BA932
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BA932:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BA928
	b _080BA9A0
	.byte 0x00, 0x00
_080BA93C: .4byte 0x03000FD8
_080BA940: .4byte 0x00007FFF
_080BA944:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BA95A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BA94E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BA94E
_080BA95A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BA970
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BA964:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BA964
_080BA970:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BA986
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BA97A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BA97A
_080BA986:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BA9A0
	movs r1, #0x10
_080BA990:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BA99A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BA99A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BA990
_080BA9A0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080BA9A8:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080BA9B2
	movs r1, #0x00
_080BA9B2:
	mov r3, r9
	cmp r3, #0x00
	bge _080BA9BA
	movs r2, #0x00
_080BA9BA:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BA9C4
	adds r1, r0, #0x0
_080BA9C4:
	ldr r0, _080BAA24 @ =0x00007FFF
	cmp r2, r0
	ble _080BA9CC
	adds r2, r0, #0x0
_080BA9CC:
	cmp r2, r1
	bge _080BA9D2
	adds r1, r2, #0x0
_080BA9D2:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080BA9EA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080BA9EC
_080BA9EA:
	movs r1, #0x00
_080BA9EC:
	cmp r1, #0x00
	bne _080BA9F2
	b _080BACC8
_080BA9F2:
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080BAA28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080BAA2C
	movs r2, #0x18
	negs r2, r2
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	b _080BAA42
	.byte 0x00, 0x00
_080BAA24: .4byte 0x00007FFF
_080BAA28: .4byte 0x03000FD8
_080BAA2C:
	cmp r1, #0x40
	bne _080BAA42
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r2, #0x18
	negs r2, r2
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_807E680
_080BAA42:
	ldr r4, _080BAB10 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	ldr r2, _080BAB14 @ =0x0300034C
	cmp r0, #0x00
	bne _080BAA54
	b _080BAB94
_080BAA54:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080BAA60
	b _080BAB94
_080BAA60:
	movs r2, #0x24
	negs r2, r2
	movs r0, #0x07
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
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
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080BAB7A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BAB18
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BAAC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAABA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAABA
_080BAAC6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAADC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAAD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAAD0
_080BAADC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BAAF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAAE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAAE6
_080BAAF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BAB76
	movs r1, #0x10
_080BAAFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BAB06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BAB06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BAAFC
	b _080BAB76
	.byte 0x00, 0x00
_080BAB10: .4byte 0x03000FD8
_080BAB14: .4byte 0x0300034C
_080BAB18:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BAB30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAB24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAB24
_080BAB30:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAB46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAB3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAB3A
_080BAB46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BAB5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAB50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAB50
_080BAB5C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BAB76
	movs r1, #0x10
_080BAB66:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BAB70
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BAB70:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BAB66
_080BAB76:
	bl sub_807F448
_080BAB7A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080BAB90 @ =0x00000FFF
	ands r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
	b _080BACC8
_080BAB90: .4byte 0x00000FFF
_080BAB94:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080BABA0
	b _080BACC8
_080BABA0:
	movs r3, #0x08
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x2E
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080BAC50 @ =0x03000FD8
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
	bne _080BACB6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BAC54
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BAC08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BABFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BABFC
_080BAC08:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAC1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAC12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAC12
_080BAC1E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BAC34
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAC28:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAC28
_080BAC34:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BACB2
	movs r1, #0x10
_080BAC3E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BAC48
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BAC48:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BAC3E
	b _080BACB2
_080BAC50: .4byte 0x03000FD8
_080BAC54:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BAC6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAC60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAC60
_080BAC6C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAC82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAC76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAC76
_080BAC82:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BAC98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAC8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAC8C
_080BAC98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BACB2
	movs r1, #0x10
_080BACA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BACAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BACAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BACA2
_080BACB2:
	bl sub_807F448
_080BACB6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	ldr r1, _080BAD9C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x00]
_080BACC8:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080BACD4
	b _080BAF66
_080BACD4:
	mov r1, r9
	cmp r1, #0x00
	bge _080BACDC
	movs r1, #0x00
_080BACDC:
	ldr r0, _080BADA0 @ =0x00007FFF
	cmp r1, r0
	ble _080BACE4
	adds r1, r0, #0x0
_080BACE4:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080BACFC
	mov r2, r10
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080BACFE
_080BACFC:
	movs r2, #0x00
_080BACFE:
	cmp r2, #0x00
	bne _080BAD04
	b _080BAE16
_080BAD04:
	ldr r3, _080BADA4 @ =0x03000FD8
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
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080BAD9C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BADA8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BAD52
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAD46:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAD46
_080BAD52:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAD68
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAD5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAD5C
_080BAD68:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BAD7E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAD72:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAD72
_080BAD7E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BAE04
	movs r1, #0x10
_080BAD88:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BAD92
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BAD92:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BAD88
	b _080BAE04
	.byte 0x00, 0x00
_080BAD9C: .4byte 0x00000FFF
_080BADA0: .4byte 0x00007FFF
_080BADA4: .4byte 0x03000FD8
_080BADA8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BADBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BADB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BADB2
_080BADBE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BADD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BADC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BADC8
_080BADD4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BADEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BADDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BADDE
_080BADEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BAE04
	movs r1, #0x10
_080BADF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BADFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BADFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BADF4
_080BAE04:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080BAF66
_080BAE16:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080BAE22
	b _080BAF66
_080BAE22:
	ldr r0, _080BAEE4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080BAE30
	b _080BAF66
_080BAE30:
	ldr r4, _080BAEE8 @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080BAE5E
	b _080BAF66
_080BAE5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080BAEEC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BAEF0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BAE9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAE90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAE90
_080BAE9C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAEB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAEA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAEA6
_080BAEB2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BAEC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAEBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAEBC
_080BAEC8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BAF4E
	movs r1, #0x10
_080BAED2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BAEDC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BAEDC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BAED2
	b _080BAF4E
_080BAEE4: .4byte 0x0300034C
_080BAEE8: .4byte 0x03000FD8
_080BAEEC: .4byte 0x00000FFF
_080BAEF0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BAF08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAEFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAEFC
_080BAF08:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BAF1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAF12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAF12
_080BAF1E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BAF34
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BAF28:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BAF28
_080BAF34:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BAF4E
	movs r1, #0x10
_080BAF3E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BAF48
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BAF48:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BAF3E
_080BAF4E:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x08
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	bl sub_807EAE4
_080BAF66:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080BB000
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080BAF7C
	movs r1, #0x00
_080BAF7C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080BAF86
	adds r2, r0, #0x0
_080BAF86:
	ldr r0, _080BAFCC @ =0x00007FFF
	cmp r1, r0
	ble _080BAF8E
	adds r1, r0, #0x0
_080BAF8E:
	cmp r1, r2
	bge _080BAF94
	adds r2, r1, #0x0
_080BAF94:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080BAFAE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080BAFB0
_080BAFAE:
	movs r2, #0x00
_080BAFB0:
	cmp r2, #0x00
	beq _080BB000
	cmp r3, #0x02
	bne _080BAFD8
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080BAFD0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080BAFD4 @ =0x080BB799
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	b _080BAFEE
	.byte 0x00, 0x00
_080BAFCC: .4byte 0x00007FFF
_080BAFD0: .4byte 0x00000FFF
_080BAFD4: .4byte sub_80BB798
_080BAFD8:
	cmp r3, #0x03
	bne _080BB000
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080BAFF8 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r1, _080BAFFC @ =0x080BC37D
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
_080BAFEE:
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080BB13C
	.byte 0x00, 0x00
_080BAFF8: .4byte 0x00000FFF
_080BAFFC: .4byte sub_80BC37C
_080BB000:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080BB01E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080BB020
_080BB01E:
	movs r1, #0x00
_080BB020:
	cmp r1, #0x00
	beq _080BB052
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB036
	cmp r1, #0x04
	bne _080BB052
_080BB036:
	ldr r2, _080BB14C @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BB052:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BB13C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BB07E
	cmp r2, #0x04
	bne _080BB09A
_080BB07E:
	ldr r2, _080BB150 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BB09A:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB0AC
	cmp r1, #0x04
	bne _080BB0C8
_080BB0AC:
	ldr r2, _080BB154 @ =0x00002062
	adds r0, r6, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BB0C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BB0D6
	cmp r2, #0x04
	bne _080BB11A
_080BB0D6:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BB0DE
	adds r1, #0xFF
_080BB0DE:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BB0F4
	adds r2, #0xFF
_080BB0F4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x10
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl sub_80880C4
_080BB11A:
	ldr r2, _080BB158 @ =0x03001038
	ldr r0, _080BB15C @ =0x0819832C
	ldr r1, _080BB160 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x04
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	ldr r0, _080BB164 @ =0x080BB169
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080BB13C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BB14C: .4byte 0x00002033
_080BB150: .4byte 0x00002024
_080BB154: .4byte 0x00002062
_080BB158: .4byte 0x03001038
_080BB15C: .4byte 0x0819832C
_080BB160: .4byte 0x08198220
_080BB164: .4byte sub_80BB168
