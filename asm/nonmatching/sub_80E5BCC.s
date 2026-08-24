	.syntax unified
	.text

	thumb_func_start sub_80E5BCC
sub_80E5BCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x05C]
	ldr r4, [sp, #0x060]
	ldr r5, [sp, #0x064]
	ldr r6, [sp, #0x068]
	ldr r7, [sp, #0x06C]
	mov r8, r7
	ldr r7, [sp, #0x070]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x01C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x020]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x024]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r9, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x028]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x02C]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, r10
	cmp r1, #0x00
	bne _080E5C2E
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	bl sub_80E9310
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
_080E5C2E:
	ldr r0, _080E5E2C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x030]
	movs r0, #0x07
	ldr r7, [sp, #0x02C]
	ands r0, r7
	cmp r0, #0x02
	bne _080E5C7A
	mov r0, r9
	cmp r0, #0x03
	bhi _080E5C54
	movs r1, #0x04
	mov r9, r1
_080E5C54:
	mov r0, r10
	adds r0, #0x02
	movs r1, #0x03
	bl __divsi3
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r10, r1
	mov r0, r9
	adds r0, #0x01
	movs r2, #0x02
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
_080E5C7A:
	mov r0, r10
	adds r0, #0x04
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	mov r0, r9
	adds r0, #0x02
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r7, [sp, #0x01C]
	cmp r7, #0x04
	beq _080E5CA4
	ldr r0, [sp, #0x018]
	movs r1, #0x04
	bl sub_80E6FB8
	ldr r0, [sp, #0x018]
	movs r1, #0x10
	bl sub_80E7118
_080E5CA4:
	movs r0, #0x4C
	ldr r2, [sp, #0x01C]
	adds r1, r2, #0x0
	muls r1, r0
	ldr r7, [sp, #0x018]
	ldr r0, [r7, #0x04]
	adds r7, r0, r1
	mov r0, sp
	ldrh r0, [r0, #0x20]
	strh r0, [r7, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x24]
	strh r1, [r7, #0x36]
	adds r0, r7, #0x0
	adds r0, #0x38
	mov r2, r10
	strb r2, [r0, #0x00]
	adds r0, #0x01
	mov r1, r9
	strb r1, [r0, #0x00]
	mov r2, sp
	ldrh r2, [r2, #0x2C]
	strh r2, [r7, #0x3C]
	adds r3, r7, #0x0
	adds r3, #0x41
	lsls r2, r4, #0x05
	ldrb r1, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r1
	orrs r0, r2
	movs r1, #0x19
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x42
	ldrb r1, [r4, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	movs r2, #0x79
	negs r2, r2
	ands r0, r2
	strb r0, [r4, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x28]
	strh r0, [r7, #0x3A]
	adds r2, r7, #0x0
	adds r2, #0x43
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x03
	negs r0, r0
	ands r1, r0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [r7, #0x48]
	str r1, [r7, #0x44]
	mov r6, r10
	adds r6, #0x01
	mov r5, r9
	adds r5, #0x01
	adds r4, r6, #0x0
	muls r4, r5
	lsls r4, r4, #0x05
	ldr r2, [sp, #0x018]
	ldr r0, [r2, #0x00]
	adds r1, r4, #0x0
	bl sub_80E9414
	ldr r2, [sp, #0x018]
	ldr r1, [r2, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x2C]
	mov r8, r0
	ldr r0, _080E5E30 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	mov r1, r8
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [sp, #0x020]
	lsls r4, r0, #0x10
	lsrs r2, r4, #0x10
	ldr r1, [sp, #0x024]
	lsls r1, r1, #0x10
	str r1, [sp, #0x034]
	lsrs r3, r1, #0x10
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	bl sub_80E8FB8
	mov r2, r9
	str r2, [sp, #0x000]
	ldr r0, [sp, #0x028]
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x02C]
	str r1, [sp, #0x008]
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	ldr r2, [sp, #0x01C]
	mov r3, r10
	bl sub_80E84BC
	ldr r2, [sp, #0x030]
	adds r2, #0x02
	str r2, [sp, #0x030]
	asrs r2, r4, #0x10
	adds r0, r2, #0x0
	str r5, [sp, #0x038]
	cmp r2, #0x00
	bge _080E5DB2
	adds r0, r2, #0x7
_080E5DB2:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x034]
	asrs r3, r0, #0x10
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080E5DCA
	adds r0, r3, #0x7
_080E5DCA:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x024]
	ldr r3, [sp, #0x020]
	adds r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x18
	ldr r1, [sp, #0x020]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x01
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x018]
	ldr r0, [r1, #0x04]
	ldr r2, _080E5E34 @ =0x000001B7
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	str r0, [sp, #0x014]
	adds r0, r7, #0x0
	mov r1, r8
	adds r2, r6, #0x0
	bl sub_8199D78
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0x0
	adds r2, #0x09
	mov r1, r9
	subs r1, #0x04
	cmp r1, #0x05
	bgt _080E5E3C
	ldr r0, _080E5E38 @ =0x083B9530
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	adds r0, r2, r0
	b _080E5E3E
_080E5E2C: .4byte 0x0300034C
_080E5E30: .4byte 0x03001034
_080E5E34: .4byte 0x000001B7
_080E5E38: .4byte dword_83B9530 @ =0x083B9530
_080E5E3C:
	adds r0, #0x0C
_080E5E3E:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r7, #0x0
	movs r1, #0x00
	ldr r3, [sp, #0x030]
	bl sub_8199D5C
	ldr r2, [sp, #0x018]
	ldr r0, [r2, #0x04]
	movs r7, #0xDA
	lsls r7, r7, #0x01
	adds r2, r0, r7
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r3, r0, r1
	movs r0, #0x01
	ldr r7, [sp, #0x01C]
	lsls r0, r7
	ldrb r1, [r3, #0x00]
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xFF
	ands r0, r1
	ldrb r1, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x07
	ldr r1, [sp, #0x02C]
	ands r0, r1
	cmp r0, #0x02
	beq _080E5EB4
	cmp r0, #0x02
	bgt _080E5E86
	cmp r0, #0x01
	beq _080E5E8C
	b _080E5F1C
_080E5E86:
	cmp r0, #0x03
	beq _080E5EE8
	b _080E5F1C
_080E5E8C:
	ldr r2, [sp, #0x020]
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	ldr r7, [sp, #0x024]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	mov r0, r10
	str r0, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x018]
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E7B48
	mov r2, r10
	str r2, [sp, #0x000]
	mov r7, r9
	b _080E5ED8
_080E5EB4:
	ldr r0, [sp, #0x020]
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	ldr r1, [sp, #0x024]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	mov r2, r10
	str r2, [sp, #0x000]
	mov r7, r9
	str r7, [sp, #0x004]
	ldr r0, [sp, #0x018]
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E7E0C
	mov r0, r10
	str r0, [sp, #0x000]
_080E5ED8:
	str r7, [sp, #0x004]
	ldr r0, [sp, #0x018]
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E91B4
	b _080E5F32
_080E5EE8:
	ldr r1, [sp, #0x020]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	ldr r2, [sp, #0x024]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	mov r7, r10
	str r7, [sp, #0x000]
	mov r0, r9
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x018]
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E8228
	str r7, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x018]
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E90CC
	b _080E5F32
_080E5F1C:
	ldr r1, _080E5F6C @ =0x03001034
	ldr r2, [sp, #0x038]
	lsls r0, r2, #0x02
	adds r2, r6, #0x0
	muls r2, r0
	lsls r2, r2, #0x03
	ldr r3, [r1, #0x00]
	movs r0, #0x00
	mov r1, r8
	bl _call_via_r3
_080E5F32:
	ldr r7, [sp, #0x018]
	ldr r3, [r7, #0x04]
	ldr r1, _080E5F70 @ =0x000001B3
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x01C]
	asrs r0, r2
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080E5F74
	movs r7, #0xCA
	lsls r7, r7, #0x01
	adds r0, r3, r7
	ldr r1, [r0, #0x00]
	mov r0, r8
	subs r1, r0, r1
	ldr r2, [sp, #0x038]
	lsls r0, r2, #0x02
	adds r2, r6, #0x0
	muls r2, r0
	lsls r2, r2, #0x03
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r8
	movs r3, #0x20
	bl sub_8018218
	b _080E5F9A
_080E5F6C: .4byte 0x03001034
_080E5F70: .4byte 0x000001B3
_080E5F74:
	ldr r2, _080E5FAC @ =0x040000D4
	mov r7, r8
	str r7, [r2, #0x00]
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	subs r0, r7, r0
	str r0, [r2, #0x04]
	ldr r7, [sp, #0x038]
	lsls r0, r7, #0x02
	muls r0, r6
	lsls r0, r0, #0x03
	lsrs r0, r0, #0x02
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
_080E5F9A:
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E5FAC: .4byte 0x040000D4
