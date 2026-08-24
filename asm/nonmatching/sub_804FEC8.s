	.syntax unified
	.text

	thumb_func_start sub_804FEC8
sub_804FEC8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _0804FFBC @ =0x08CDBF28
	str r0, [r1, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r7, #0x02
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0x0
	add r1, sp, #0x004
	adds r2, r5, #0x0
	bl sub_80FB6D4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0804FF2C
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r4, r5, r2
	movs r0, #0xD2
	lsls r0, r0, #0x02
	ldr r2, _0804FFC0 @ =0x081E26BC
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	movs r1, #0x01
	negs r1, r1
	add r2, sp, #0x004
	ldrb r3, [r2, #0x00]
	str r5, [sp, #0x000]
	adds r2, r6, #0x0
	bl sub_80504BC
	str r0, [r4, #0x00]
_0804FF2C:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0804FFC4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8B
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r1, #0x96
	lsls r1, r1, #0x04
	adds r2, r2, r1
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0804FFB0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0804FFC8 @ =0x0000020F
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r4, #0x03
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0804FFB0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r3, #0x00]
	ldr r2, _0804FFC8 @ =0x0000020F
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
_0804FFB0:
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0804FFBC: .4byte 0x08CDBF28
_0804FFC0: .4byte 0x081E26BC
_0804FFC4: .4byte 0x03000FC0
_0804FFC8: .4byte 0x0000020F
