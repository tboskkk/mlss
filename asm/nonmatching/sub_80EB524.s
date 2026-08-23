	.syntax unified
	.text

	thumb_func_start sub_80EB524
sub_80EB524:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x04
	bls _080EB53C
	b _080EB6A0
_080EB53C:
	lsls r0, r0, #0x02
	ldr r1, _080EB548 @ =lbl_080EB54C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EB548: .4byte lbl_080EB54C
lbl_080EB54C:
	.4byte _080EB660
	.4byte _080EB67C
	.4byte _080EB58A
	.4byte _080EB620
	.4byte _080EB560
_080EB560:
	cmp r4, #0
	bne.n _080EB566
	b.n _080EB82A
_080EB566:
	adds r0, r4, #0
	adds r0, #248 @ 0xf8
	ldrb r0, [r0, #0]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	bne.n _080EB578
	b.n _080EB82A
_080EB578:
	adds r0, r6, #0
	adds r0, #28
	adds r1, r4, #0
	adds r1, #88 @ 0x58
	movs r2, #1
	str r2, [sp, #0]
	movs r2, #255 @ 0xff
	str r2, [sp, #4]
	b.n _080EB7FC
_080EB58A:
	ldr r0, [pc, #132] @ (0x80eb610)
	mov r8, r0
	ldr r0, [r0, #0]
	adds r3, r0, #0
	adds r3, #168 @ 0xa8
	movs r1, #164 @ 0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq.n _080EB620
	adds r0, r6, #0
	adds r0, #28
	movs r7, #1
	str r7, [sp, #0]
	movs r1, #255 @ 0xff
	str r1, [sp, #4]
	adds r1, r3, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_80EA5C8
	ldr r4, [r6, #20]
	ldr r0, [r4, #40] @ 0x28
	ldr r5, [pc, #80] @ (0x80eb614)
	adds r0, r0, r5
	ldrb r1, [r0, #0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq.n _080EB5F6
	mov r0, r8
	ldr r2, [r0, #0]
	ldr r1, [pc, #68] @ (0x80eb618)
	adds r2, r2, r1
	ldrb r3, [r2, #0]
	lsrs r1, r3, #6
	ldr r0, [pc, #64] @ (0x80eb61c)
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #63 @ 0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r1, [r4, #40] @ 0x28
	adds r1, r1, r5
	ldrb r2, [r1, #0]
	movs r0, #2
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
_080EB5F6:
	ldr r0, [r4, #44] @ 0x2c
	adds r0, r0, r5
	ldrb r1, [r0, #0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne.n _080EB606
	b.n _080EB76A
_080EB606:
	mov r0, r8
	ldr r2, [r0, #0]
	ldr r1, [pc, #12] @ (0x80eb618)
	adds r2, r2, r1
	b.n _080EB74A
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsls r5, r1, #8
	movs r0, r0
	lsls r2, r3, #21
	movs r0, r0
_080EB61C:
	.byte 0xFE, 0xFF, 0x00, 0x00
_080EB620:
	.byte 0x0D, 0x48, 0x02, 0x68, 0xA8, 0x20, 0x40, 0x00, 0x13, 0x18, 0xF8, 0x21, 0x49, 0x00, 0x50, 0x18
	.byte 0x00, 0x78, 0x01, 0x21, 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xF5, 0xE0, 0x07, 0x49
	.byte 0x50, 0x18, 0x01, 0x78, 0x01, 0x22, 0x10, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xEC, 0xE0
	.byte 0x30, 0x1C, 0x1C, 0x30, 0x00, 0x92, 0xCE, 0xE0, 0xD0, 0x0F, 0x00, 0x03, 0x5A, 0x05, 0x00, 0x00
_080EB660:
	.byte 0x05, 0x48, 0x03, 0x68, 0x18, 0x1C, 0xA0, 0x30, 0x00, 0x78, 0x01, 0x21, 0x48, 0x40, 0x08, 0x40
	.byte 0x00, 0x28, 0x00, 0xD1, 0xD9, 0xE0, 0xBA, 0xE0, 0xD0, 0x0F, 0x00, 0x03
_080EB67C:
	.byte 0x07, 0x48, 0x00, 0x68, 0xFC, 0x21, 0x49, 0x00, 0x43, 0x18, 0xA0, 0x31, 0x40, 0x18, 0x00, 0x78
	.byte 0x01, 0x21, 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xC8, 0xE0, 0xA9, 0xE0, 0x00, 0x00
	.byte 0xD0, 0x0F, 0x00, 0x03
_080EB6A0:
	cmp r4, #0x00
	beq _080EB6C6
	adds r0, r4, #0x0
	adds r0, #0xF8
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EB6C6
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	movs r2, #0x01
	str r2, [sp, #0x000]
	movs r2, #0xFF
	str r2, [sp, #0x004]
	b _080EB7FC
_080EB6C6:
	ldr r1, _080EB788 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	mov r12, r0
	mov r3, r12
	adds r3, #0xA8
	movs r0, #0xA4
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	movs r4, #0x01
	eors r0, r4
	ands r0, r4
	mov r8, r1
	cmp r0, #0x00
	beq _080EB7A0
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r7, #0x01
	str r7, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	ldr r4, [r6, #0x14]
	ldr r0, [r4, #0x28]
	ldr r5, _080EB78C @ =0x0000020D
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB734
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r0, _080EB790 @ =0x0000055A
	adds r2, r2, r0
	ldrb r3, [r2, #0x00]
	lsrs r1, r3, #0x06
	ldr r0, _080EB794 @ =0x0000FFFE
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EB734:
	ldr r0, [r4, #0x2C]
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB76A
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r0, _080EB790 @ =0x0000055A
	adds r2, r2, r0
_080EB74A:
	ldrb r3, [r2, #0x00]
	lsrs r1, r3, #0x06
	ldr r0, _080EB798 @ =0x0000FFFD
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x2C]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EB76A:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _080EB790 @ =0x0000055A
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080EB82A
	ldr r0, [r6, #0x14]
	ldr r1, _080EB79C @ =0x000003FF
	bl sub_8028D6C
	b _080EB82A
	.byte 0x00, 0x00
_080EB788: .4byte 0x03000FD0
_080EB78C: .4byte 0x0000020D
_080EB790: .4byte 0x0000055A
_080EB794: .4byte 0x0000FFFE
_080EB798: .4byte 0x0000FFFD
_080EB79C: .4byte 0x000003FF
_080EB7A0:
	movs r3, #0xA8
	lsls r3, r3, #0x01
	add r3, r12
	movs r0, #0xF8
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	eors r0, r4
	ands r0, r4
	cmp r0, #0x00
	beq _080EB7D4
	ldr r0, _080EB7D0 @ =0x0000055A
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EB7D4
	adds r0, r6, #0x0
	adds r0, #0x1C
	str r2, [sp, #0x000]
	b _080EB7F6
	.byte 0x00, 0x00
_080EB7D0: .4byte 0x0000055A
_080EB7D4:
	mov r0, r8
	ldr r2, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r3, r2, r1
	adds r1, #0xA0
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EB806
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r1, #0x01
	str r1, [sp, #0x000]
_080EB7F6:
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r3, #0x0
_080EB7FC:
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	b _080EB82A
_080EB806:
	adds r0, r2, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EB82A
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r1, #0x01
	str r1, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r2, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
_080EB82A:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
