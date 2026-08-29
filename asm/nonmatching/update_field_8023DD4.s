	.syntax unified
	.text

	thumb_func_start update_field_8023DD4
update_field_8023DD4: @ 08023DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r10, r0
	ldr r0, _08023DFC @ =0x0000012B
	add r0, r10
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08023E00
	mov r0, r10
	bl sub_8028FBC
	bl _080254A2
_08023DFC:
	lsls r3, r5, #0x04
	lsls r0, r0, #0x00
_08023E00:
	movs r0, #0xAA
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08023E1A
	mov r0, r10
	bl start_battle_8027AC4
	bl _080254A2
_08023E1A:
	movs r0, #0x96
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	cmp r0, #0xF8
	beq _08023E34
	mov r0, r10
	bl sub_8027558
	bl _080254A2
_08023E34:
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08023E48
	mov r0, r10
	bl sub_80275F4
	bl _080254A2
_08023E48:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08023E5A
	mov r0, r10
	bl sub_8027688
	bl _080254A2
_08023E5A:
	ldr r0, _08023E74 @ =0x0000012D
	add r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08023E78
	mov r0, r10
	bl sub_802772C
	bl _080254A2
	lsls r0, r0, #0x00
_08023E74:
	lsls r5, r5, #0x04
	lsls r0, r0, #0x00
_08023E78:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023E82
	b _0802452E
_08023E82:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08023E8C
	b _0802453E
_08023E8C:
	movs r1, #0x85
	lsls r1, r1, #0x01
	add r1, r10
	ldrb r2, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	ble _08023EC4
	subs r2, #0x01
	strb r2, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x04
	bhi _08023EC4
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08023EC4
	mov r0, r10
	adds r0, #0xFC
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08023EC4:
	ldr r3, _08023F30 @ =0x0000020A
	add r3, r10
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1C
	movs r5, #0x01
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08023F34 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08023F16
	ldr r4, _08023F38 @ =0x000002A9
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08023F16
	mov r0, r10
	bl sub_8028C40
	mov r0, r10
	bl sub_8028E70
	adds r1, r5, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
_08023F16:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x11
	bls _08023F26
	bl _0802476C
_08023F26:
	lsls r0, r0, #0x02
	ldr r1, _08023F3C @ =lbl_08023F40
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08023F30: .4byte 0x0000020A
_08023F34: .4byte 0x00000291
_08023F38: .4byte 0x000002A9
_08023F3C: .4byte lbl_08023F40
lbl_08023F40:
	.4byte _0802476C
	.4byte _08023F88
	.4byte _08023FC4
	.4byte _0802406C
	.4byte _080241C4
	.4byte _08024350
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080246D8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
_08023F88:
	mov r0, sl
	bl sub_8027378
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08023F98
	bl _0802476C
_08023F98:
	movs r0, #174 @ 0xae
	lsls r0, r0, #2
	add r0, sl
	ldrb r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq.n _08023FAA
	b.n _0802476C
_08023FAA:
	movs r1, #149 @ 0x95
	lsls r1, r1, #1
	add r1, sl
	movs r0, #2
	strb r0, [r1, #0]
	mov r2, sl
	adds r2, #249 @ 0xf9
	ldrb r1, [r2, #0]
	subs r0, #19
	ands r0, r1
	movs r1, #33 @ 0x21
	negs r1, r1
	b.n _08024338
_08023FC4:
	mov r4, sl
	adds r4, #253 @ 0xfd
	ldrb r1, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq.n _08024000
	mov r0, sl
	bl sub_8027378
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _08024000
	ldr r1, [pc, #128] @ (0x8024060)
	mov r0, sl
	adds r0, #254 @ 0xfe
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldrb r1, [r4, #0]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0]
	ldr r2, [pc, #112] @ (0x8024064)
	ldrh r1, [r2, #2]
	movs r3, #128 @ 0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
_08024000:
	bl sub_801B084
	mov r0, sl
	bl sub_8025E94
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	movs r4, #214 @ 0xd6
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne.n _08024038
	mov r0, sl
	movs r1, #6
	bl sub_8025D24
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08024038
	mov r0, sl
	movs r1, #3
	bl sub_803C720
_08024038:
	movs r0, #130 @ 0x82
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #0]
	ldr r1, [pc, #36] @ (0x8024068)
	ands r0, r1
	cmp r0, #0
	beq.n _0802404A
	b.n _0802476C
_0802404A:
	mov r4, sl
	adds r4, #208 @ 0xd0
	ldr r1, [r4, #0]
	mov r0, sl
	bl sub_802D544
	ldr r1, [r4, #0]
	mov r0, sl
	bl sub_802D46C
	b.n _0802476C
	lsls r2, r6, #9
	lsls r0, r0, #8
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsls r0, r0, #4
	asrs r0, r0, #32
_0802406C:
	movs r6, #129 @ 0x81
	lsls r6, r6, #2
	add r6, sl
	ldr r0, [r6, #0]
	mov r1, sl
	adds r1, #40 @ 0x28
	bl sub_80461B4
	ldr r0, [r6, #0]
	bl sub_8047B78
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq.n _0802408C
	b.n _0802476C
_0802408C:
	movs r7, #128 @ 0x80
	lsls r7, r7, #2
	add r7, sl
	ldr r3, [r7, #0]
	ldr r1, [r6, #0]
	movs r2, #145 @ 0x91
	lsls r2, r2, #2
	adds r0, r1, r2
	strh r4, [r0, #0]
	ldr r0, [pc, #140] @ (0x802412c)
	adds r1, r1, r0
	strh r4, [r1, #0]
	adds r2, r3, r2
	strh r4, [r2, #0]
	adds r3, r3, r0
	strh r4, [r3, #0]
	ldr r4, [r7, #0]
	ldr r3, [r6, #0]
	ldr r5, [pc, #124] @ (0x8024130)
	adds r3, r3, r5
	ldrb r2, [r3, #0]
	movs r1, #127 @ 0x7f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #65 @ 0x41
	negs r2, r2
	ands r0, r2
	strb r0, [r3, #0]
	adds r4, r4, r5
	ldrb r0, [r4, #0]
	ands r1, r0
	ands r1, r2
	strb r1, [r4, #0]
	ldr r4, [r7, #0]
	ldr r1, [r6, #0]
	adds r5, #155 @ 0x9b
	adds r1, r1, r5
	ldrb r3, [r1, #0]
	adds r0, r2, #0
	ands r0, r3
	strb r0, [r1, #0]
	adds r4, r4, r5
	ldrb r0, [r4, #0]
	ands r2, r0
	strb r2, [r4, #0]
	ldr r1, [r6, #0]
	ldr r0, [r7, #0]
	movs r2, #152 @ 0x98
	lsls r2, r2, #2
	adds r4, r0, r2
	ldrh r3, [r4, #0]
	subs r2, #34 @ 0x22
	adds r0, r0, r2
	strh r3, [r0, #0]
	ldrh r0, [r4, #0]
	adds r1, r1, r2
	strh r0, [r1, #0]
	movs r1, #130 @ 0x82
	lsls r1, r1, #2
	add r1, sl
	ldrb r0, [r1, #0]
	movs r4, #16
	orrs r0, r4
	strb r0, [r1, #0]
	mov r0, sl
	movs r1, #0
	bl sub_802DF80
	ldr r0, [pc, #28] @ (0x8024134)
	add r0, sl
	ldrb r0, [r0, #0]
	lsls r0, r0, #27
	lsrs r0, r0, #29
	cmp r0, #3
	beq.n _08024160
	cmp r0, #3
	bgt.n _08024138
	cmp r0, #2
	beq.n _0802413E
	b.n _080241AC
	lsls r2, r0, #9
	movs r0, r0
	lsls r6, r6, #10
	movs r0, r0
	lsls r6, r0, #9
	movs r0, r0
_08024138:
	cmp r0, #4
	beq.n _08024184
	b.n _080241AC
_0802413E:
	ldr r0, [r6, #0]
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne.n _080241AC
	ldr r1, [pc, #16] @ (0x802415c)
	add r1, sl
	ldrb r0, [r1, #0]
	orrs r0, r4
	strb r0, [r1, #0]
	mov r0, sl
	bl sub_8035974
	b.n _080241AC
	movs r0, r0
	lsls r3, r1, #8
	movs r0, r0
_08024160:
	ldr r0, [r6, #0]
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne.n _080241AC
	ldr r0, [pc, #20] @ (0x8024180)
	add r0, sl
	ldrb r1, [r0, #0]
	orrs r1, r4
	strb r1, [r0, #0]
	ldr r1, [r6, #0]
	mov r0, sl
	bl sub_8033B98
	b.n _080241AC
	movs r0, r0
	lsls r3, r1, #8
	movs r0, r0
_08024184:
	ldr r0, [r6, #0]
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne.n _080241AC
	ldr r1, [pc, #48] @ (0x80241c0)
	add r1, sl
	ldrb r0, [r1, #0]
	orrs r0, r4
	strb r0, [r1, #0]
	ldr r1, [r6, #0]
	mov r0, sl
	bl sub_8034870
	ldr r1, [r7, #0]
	adds r1, r1, r5
	ldrb r0, [r1, #0]
	movs r2, #64 @ 0x40
	orrs r0, r2
	strb r0, [r1, #0]
_080241AC:
	movs r1, #149 @ 0x95
	lsls r1, r1, #1
	add r1, sl
	movs r0, #2
	strb r0, [r1, #0]
	mov r2, sl
	adds r2, #249 @ 0xf9
	ldrb r1, [r2, #0]
	subs r0, #19
	b.n _08024338
	lsls r3, r1, #8
	movs r0, r0
_080241C4:
	mov r0, sl
	bl sub_8028C40
	mov r0, sl
	bl sub_8028E70
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq.n _080241DA
	b.n _0802476C
_080241DA:
	movs r7, #129 @ 0x81
	lsls r7, r7, #2
	add r7, sl
	ldr r0, [r7, #0]
	movs r3, #218 @ 0xda
	lsls r3, r3, #2
	mov r8, r3
	add r0, r8
	ldr r2, [r0, #0]
	ldrb r3, [r2, #20]
	movs r1, #20
	ldrsb r1, [r2, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq.n _0802420A
	strb r3, [r2, #16]
	ldr r0, [r7, #0]
	movs r6, #218 @ 0xda
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r1, [r0, #0]
	movs r0, #255 @ 0xff
	strb r0, [r1, #20]
_0802420A:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	mov r9, r0
	mov r6, sl
	add r6, r9
	ldr r0, [r6, #0]
	add r0, r8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #16]
	strb r0, [r1, #20]
	ldr r0, [r6, #0]
	add r0, r8
	ldr r0, [r0, #0]
	strb r4, [r0, #16]
	mov r5, sl
	adds r5, #250 @ 0xfa
	ldrh r2, [r5, #0]
	lsls r0, r2, #22
	lsrs r1, r0, #27
	movs r3, #130 @ 0x82
	lsls r3, r3, #2
	add r3, sl
	ldrb r0, [r3, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #31
	cmp r1, r0
	bne.n _0802424E
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #5
	ldr r0, [pc, #248] @ (0x8024340)
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0]
_0802424E:
	ldrb r2, [r3, #0]
	lsls r1, r2, #29
	lsrs r1, r1, #31
	movs r4, #1
	eors r1, r4
	lsls r1, r1, #2
	movs r0, #5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldr r1, [pc, #220] @ (0x8024344)
	ldr r1, [r1, #0]
	movs r2, #165 @ 0xa5
	lsls r2, r2, #3
	lsls r0, r0, #29
	lsrs r0, r0, #31
	str r0, [r2, r1]
	movs r0, #166 @ 0xa6
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r5, #0]
	lsls r0, r0, #22
	lsrs r0, r0, #27
	str r0, [r1, #0]
	ldrb r1, [r3, #0]
	movs r0, #4
	ands r0, r1
	mov r1, sl
	adds r1, #40 @ 0x28
	adds r0, r1, r0
	ldr r0, [r0, #0]
	str r0, [r6, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #31
	eors r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	str r0, [r7, #0]
	ldr r2, [r6, #0]
	ldr r3, [pc, #164] @ (0x8024348)
	adds r2, r2, r3
	ldrb r0, [r2, #0]
	movs r1, #128 @ 0x80
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r1, [r7, #0]
	adds r1, r1, r3
	ldrb r2, [r1, #0]
	movs r0, #127 @ 0x7f
	ands r0, r2
	strb r0, [r1, #0]
	ldr r0, [r6, #0]
	add r0, r8
	ldr r0, [r0, #0]
	strh r4, [r0, #4]
	ldr r0, [r6, #0]
	add r0, r8
	ldr r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #1
	strh r0, [r1, #6]
	ldr r0, [r7, #0]
	add r0, r8
	ldr r1, [r0, #0]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #4]
	ldr r0, [r7, #0]
	add r0, r8
	ldr r0, [r0, #0]
	mov r1, r9
	strh r1, [r0, #6]
	ldr r2, [r6, #0]
	ldr r4, [pc, #100] @ (0x802434c)
	adds r2, r2, r4
	ldrb r3, [r2, #0]
	movs r1, #65 @ 0x41
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0]
	ldr r0, [r7, #0]
	adds r0, r0, r4
	ldrb r2, [r0, #0]
	ands r1, r2
	strb r1, [r0, #0]
	ldr r1, [r6, #0]
	mov r0, sl
	movs r2, #0
	movs r3, #0
	bl sub_802DDB4
	ldr r1, [r7, #0]
	mov r0, sl
	movs r2, #0
	movs r3, #0
	bl sub_802DDB4
	mov r2, sl
	adds r2, #232 @ 0xe8
	ldr r3, [r2, #0]
	mov r1, sl
	adds r1, #236 @ 0xec
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	str r3, [r1, #0]
	movs r0, #149 @ 0x95
	lsls r0, r0, #1
	add r0, sl
	strb r5, [r0, #0]
	adds r2, #17
	ldrb r1, [r2, #0]
	movs r0, #17
	negs r0, r0
_08024338:
	ands r0, r1
	strb r0, [r2, #0]
	b.n _0802476C
	movs r0, r0
_08024340:
	.byte 0x1F, 0xFC, 0xFF, 0xFF, 0xD0, 0x0F, 0x00, 0x03, 0x52, 0x03, 0x00, 0x00, 0x51, 0x03, 0x00, 0x00
_08024350:
	.byte 0x13, 0x49, 0x51, 0x44, 0x08, 0x88, 0x01, 0x38, 0x08, 0x80, 0x00, 0x04, 0x00, 0x28, 0x00, 0xDD
	.byte 0x04, 0xE2, 0x50, 0x46, 0x01, 0x21, 0x00, 0x22, 0x05, 0xF0, 0x50, 0xFB, 0x80, 0x20, 0x80, 0x00
	.byte 0x50, 0x44, 0x01, 0x68, 0x0B, 0x4C, 0x09, 0x19, 0x0B, 0x78, 0x41, 0x22, 0x52, 0x42, 0x10, 0x1C
	.byte 0x18, 0x40, 0x08, 0x70, 0x81, 0x20, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x00, 0x19, 0x01, 0x78
	.byte 0x0A, 0x40, 0x02, 0x70, 0x95, 0x21, 0x49, 0x00, 0x51, 0x44, 0x02, 0x20, 0x08, 0x70, 0xE5, 0xE1
	.byte 0x6E, 0x02, 0x00, 0x00, 0x51, 0x03, 0x00, 0x00
_080243A8:
	.byte 0x52, 0x46, 0xF9, 0x32, 0x11, 0x78, 0x40, 0x20, 0x08, 0x40, 0x14, 0x1C, 0x00, 0x28, 0x1F, 0xD1
	.byte 0x50, 0x46, 0x02, 0xF0, 0xDD, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD0, 0xD2, 0xE1, 0x00, 0x20
	.byte 0x00, 0x21, 0x05, 0xF0, 0x5D, 0xFA, 0x07, 0x49, 0x4A, 0x89, 0x07, 0x48, 0x10, 0x40, 0x48, 0x81
	.byte 0x4A, 0x89, 0x06, 0x48, 0x10, 0x40, 0x48, 0x81, 0x48, 0x89, 0x20, 0x78, 0x40, 0x21, 0x08, 0x43
	.byte 0x20, 0x70, 0xBF, 0xE1, 0xB0, 0x00, 0x00, 0x04, 0xFF, 0xC5, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00
	.byte 0x95, 0x20, 0x40, 0x00, 0x50, 0x44, 0x00, 0x78, 0x07, 0x38, 0x0A, 0x28, 0x00, 0xD9, 0x57, 0xE1
	.byte 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0x18, 0x44, 0x02, 0x08
	.byte 0x44, 0x44, 0x02, 0x08, 0x44, 0x44, 0x02, 0x08, 0xD0, 0x44, 0x02, 0x08, 0xB8, 0x46, 0x02, 0x08
	.byte 0xE0, 0x44, 0x02, 0x08, 0xF2, 0x44, 0x02, 0x08, 0x00, 0x45, 0x02, 0x08, 0x0E, 0x45, 0x02, 0x08
	.byte 0x28, 0x45, 0x02, 0x08, 0x38, 0x45, 0x02, 0x08, 0x48, 0x45, 0x02, 0x08, 0x1E, 0x48, 0x50, 0x44
	.byte 0x01, 0x78, 0x1C, 0x20, 0x08, 0x40, 0x1C, 0x28, 0x15, 0xD1, 0x95, 0x20, 0x40, 0x00, 0x50, 0x44
	.byte 0x00, 0x78, 0x08, 0x28, 0x0F, 0xD0, 0x80, 0x22, 0x92, 0x00, 0x52, 0x44, 0x10, 0x68, 0x24, 0x30
	.byte 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x15, 0x49, 0x51, 0x44, 0x08, 0x70, 0x10, 0x68, 0x81, 0x78
	.byte 0x13, 0x48, 0x50, 0x44, 0x01, 0x70, 0x80, 0x20, 0x80, 0x00, 0x50, 0x44, 0x01, 0x68, 0x11, 0x4A
	.byte 0x89, 0x18, 0x0A, 0x78, 0x41, 0x24, 0x64, 0x42, 0x20, 0x1C, 0x10, 0x40, 0x08, 0x70, 0x50, 0x46
	.byte 0x03, 0xF0, 0x64, 0xFC, 0x00, 0x23, 0x95, 0x20, 0x40, 0x00, 0x50, 0x44, 0x00, 0x78, 0x08, 0x28
	.byte 0x00, 0xD1, 0x01, 0x23, 0xAE, 0x22, 0x92, 0x00, 0x52, 0x44, 0x9B, 0x01, 0x11, 0x78, 0x20, 0x1C
	.byte 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xFB, 0xE0, 0x46, 0x02, 0x00, 0x00, 0xBB, 0x02, 0x00, 0x00
	.byte 0xBA, 0x02, 0x00, 0x00, 0x51, 0x03, 0x00, 0x00, 0x50, 0x46, 0x00, 0x21, 0x04, 0xF0, 0xA6, 0xFD
	.byte 0x50, 0x46, 0x04, 0xF0, 0x6F, 0xFD, 0x1E, 0xE0, 0x01, 0x21, 0x49, 0x42, 0x50, 0x46, 0x04, 0xF0
	.byte 0xF1, 0xFD, 0x50, 0x46, 0x03, 0xF0, 0x34, 0xF8, 0x15, 0xE0, 0x50, 0x46, 0x04, 0xF0, 0xBC, 0xFD
	.byte 0x50, 0x46, 0x03, 0xF0, 0x7B, 0xF8, 0x0E, 0xE0, 0x50, 0x46, 0x04, 0xF0, 0xAD, 0xFD, 0x50, 0x46
	.byte 0x03, 0xF0, 0xBE, 0xF8, 0x07, 0xE0, 0x50, 0x46, 0x00, 0x21, 0x00, 0x22, 0x04, 0xF0, 0x8C, 0xFD
	.byte 0x50, 0x46, 0x03, 0xF0, 0x07, 0xF9, 0x20, 0x78, 0x10, 0x21, 0x08, 0x43, 0x20, 0x70, 0xC7, 0xE0
	.byte 0x50, 0x46, 0x04, 0xF0, 0x09, 0xFD
_0802452E:
	mov r0, r10
	bl sub_802814C
	bl _080254A2
	mov r0, r10
	bl sub_8028F2C
_0802453E:
	mov r0, r10
	bl sub_8028EF4
	bl _080254A2
	movs r3, #0x80
	lsls r3, r3, #0x02
	add r3, r10
	str r3, [sp, #0x01C]
	ldr r1, [r3, #0x00]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r4, #0x81
	lsls r4, r4, #0x02
	add r4, r10
	mov r8, r4
	ldr r1, [r4, #0x00]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r4, #0x82
	lsls r4, r4, #0x02
	add r4, r10
	ldrb r2, [r4, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	movs r6, #0x01
	add r0, sp, #0x044
	strb r6, [r0, #0x00]
	movs r3, #0x01
	eors r1, r3
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, _080246C8 @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x03
	adds r1, r1, r6
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	eors r0, r3
	lsls r0, r0, #0x02
	mov r1, r10
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r7, _080246CC @ =0x000002DA
	add r7, r10
	ldrh r1, [r7, #0x00]
	movs r5, #0xB6
	lsls r5, r5, #0x02
	add r5, r10
	ldrb r2, [r5, #0x00]
	lsrs r3, r2, #0x05
	movs r6, #0xB7
	lsls r6, r6, #0x02
	add r6, r10
	mov r12, r6
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x020]
	movs r6, #0xB8
	lsls r6, r6, #0x02
	add r6, r10
	str r6, [sp, #0x028]
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x024]
	movs r6, #0xB9
	lsls r6, r6, #0x02
	add r6, r10
	str r6, [sp, #0x02C]
	ldr r0, [r6, #0x00]
	mov r9, r0
	movs r6, #0xBA
	lsls r6, r6, #0x02
	add r6, r10
	str r6, [sp, #0x034]
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x030]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r4, sp, #0x044
	ldrb r6, [r4, #0x00]
	eors r6, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r6
	strb r0, [r5, #0x00]
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x00]
	mov r6, r8
	ldr r0, [r6, #0x00]
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x18
	ldrb r4, [r5, #0x00]
	movs r0, #0x1F
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x0C]
	mov r2, r12
	str r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	ldr r4, [sp, #0x028]
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	ldr r6, [sp, #0x02C]
	str r0, [r6, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x18]
	ldr r4, [sp, #0x034]
	str r0, [r4, #0x00]
	ldr r6, [sp, #0x01C]
	ldr r4, [r6, #0x00]
	ldr r6, _080246D0 @ =0x00000351
	adds r4, r4, r6
	ldrb r5, [r4, #0x00]
	movs r2, #0x41
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r5
	strb r0, [r4, #0x00]
	mov r4, r8
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
	ldrb r4, [r0, #0x00]
	ands r2, r4
	strb r2, [r0, #0x00]
	ldr r6, [sp, #0x020]
	str r6, [sp, #0x000]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x030]
	add r9, r2
	mov r4, r9
	str r4, [sp, #0x008]
	movs r6, #0x00
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x018
	movs r2, #0x01
	strb r2, [r0, #0x00]
	mov r0, r10
	movs r2, #0x00
	bl sub_8027E90
	ldr r3, [sp, #0x01C]
	ldr r2, [r3, #0x00]
	ldr r3, _080246D4 @ =0x00000352
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r4, r8
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x00
	strb r0, [r1, #0x00]
	bl _080254A2
	lsls r0, r0, #0x00
_080246C8:
	lsrs r0, r2, #0x1F
	lsls r0, r0, #0x0C
_080246CC:
	lsls r2, r3, #0x0B
	lsls r0, r0, #0x00
_080246D0:
	lsls r1, r2, #0x0D
	lsls r0, r0, #0x00
_080246D4:
	lsls r2, r2, #0x0D
	lsls r0, r0, #0x00
_080246D8:
	mov r4, r10
	adds r4, #0xF9
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0802476C
	mov r0, r10
	bl sub_803CB5C
	mov r0, r10
	bl sub_803E9F0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _0802476C
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _08024760 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802476C
	ldr r0, _08024764 @ =0x000002AA
	add r0, r10
	ldrh r1, [r0, #0x00]
	movs r0, #0xAA
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x1B
	lsrs r2, r2, #0x1B
	lsrs r3, r3, #0x05
	movs r0, #0x01
	ands r3, r0
	ldr r0, _08024768 @ =0x000002A9
	add r0, r10
	ldrb r4, [r0, #0x00]
	lsls r0, r4, #0x1B
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r5, [sp, #0x014]
	lsls r4, r4, #0x1A
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x018]
	mov r0, r10
	bl sub_8027A04
	mov r0, r10
	bl start_battle_8027AC4
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	strb r5, [r0, #0x00]
	bl _080254A2
_08024760:
	lsls r1, r2, #0x0A
	lsls r0, r0, #0x00
_08024764:
	lsls r2, r5, #0x0A
	lsls r0, r0, #0x00
_08024768:
	lsls r1, r5, #0x0A
	lsls r0, r0, #0x00
_0802476C:
	mov r0, r10
	bl sub_802A608
	mov r0, r10
	bl sub_802C390
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08024786
	b _08024922
_08024786:
	mov r0, r10
	movs r1, #0x04
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08024796
	b _080248B2
_08024796:
	ldr r0, _0802482C @ =0x00000209
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r6, #0x01
	mov r8, r6
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080247AA
	b _080248B2
_080247AA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r4, [r0, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080248B2
	movs r7, #0x81
	lsls r7, r7, #0x02
	add r7, r10
	ldr r3, [r7, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r6, [r0, #0x00]
	cmp r6, r1
	bne _080248B2
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	bgt _080248B2
	movs r2, #0x04
	ldsh r0, [r3, r2]
	cmp r0, #0x01
	bgt _080248B2
	movs r5, #0x82
	lsls r5, r5, #0x02
	add r5, r10
	ldrb r2, [r5, #0x00]
	mov r0, r8
	ands r0, r2
	cmp r0, #0x00
	beq _080248AC
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	beq _08024830
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	bl sub_8047C18
	cmp r0, #0x00
	bne _080248B2
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x09
	cmp r0, #0x00
	bne _08024818
	movs r1, #0x1B
_08024818:
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	mov r0, r10
	movs r1, #0x00
	bl sub_802E854
	b _080248B2
	.byte 0x00, 0x00
_0802482C: .4byte 0x00000209
_08024830:
	movs r0, #0xB6
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	bne _08024856
	movs r0, #0x04
	ands r0, r2
	movs r1, #0x09
	cmp r0, #0x00
	bne _0802484C
	movs r1, #0x1B
_0802484C:
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	b _08024874
_08024856:
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r1, [r0, #0x00]
	ldrb r2, [r1, #0x14]
	movs r0, #0x14
	ldsb r0, [r1, r0]
	cmp r0, r6
	beq _08024874
	strb r2, [r1, #0x10]
	ldr r0, [r7, #0x00]
	adds r0, r0, r4
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x14]
_08024874:
	mov r0, r10
	movs r1, #0x00
	bl sub_802EC64
	movs r0, #0xB6
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	beq _080248B2
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x10]
	movs r3, #0x00
	strb r1, [r0, #0x14]
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	strb r3, [r0, #0x10]
	b _080248B2
_080248AC:
	mov r0, r10
	bl sub_8029878
_080248B2:
	mov r0, r10
	movs r1, #0x05
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08024922
	ldr r0, _08024910 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	movs r2, #0x89
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08024922
	ldr r0, _08024914 @ =0x0000020B
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802491C
	ldr r0, _08024918 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r10
	movs r1, #0x02
	movs r2, #0x08
	movs r3, #0x00
	bl sub_8027030
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x0B
	strb r0, [r1, #0x00]
	b _08024922
_08024910: .4byte 0x03000FC0
_08024914: .4byte 0x0000020B
_08024918: .4byte 0x0000FFFF
_0802491C:
	mov r0, r10
	bl sub_8029878
_08024922:
	ldr r0, _08024C28 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802494A
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r10
	adds r1, #0xFC
	str r1, [sp, #0x040]
	cmp r0, #0x00
	blt _0802494A
	b _08024D64
_0802494A:
	mov r7, r10
	adds r7, #0x28
	ldr r0, _08024C2C @ =0x0000010B
	add r0, r10
	ldrb r4, [r0, #0x00]
	mov r3, r10
	adds r3, #0xFC
	str r3, [sp, #0x040]
	str r7, [sp, #0x038]
	mov r6, r10
	adds r6, #0xA8
	str r6, [sp, #0x03C]
	cmp r4, #0x00
	beq _08024A0C
	movs r5, #0xCE
	lsls r5, r5, #0x02
	negs r0, r4
	ands r0, r2
	cmp r0, #0x00
	beq _080249AC
	mov r0, r10
	ldr r2, [r0, #0x28]
	cmp r2, #0x00
	beq _080249A2
	adds r0, r2, r5
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	mov r6, r10
	ldr r0, [r6, #0x28]
	adds r1, r0, r5
	ldr r1, [r1, #0x00]
	adds r1, #0x88
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_080249A2:
	subs r4, #0x01
	mov r7, r10
	adds r7, #0x2C
	cmp r4, #0x00
	beq _08024A0C
_080249AC:
	ldr r2, [r7, #0x00]
	cmp r2, #0x00
	beq _080249D8
	adds r0, r2, r5
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r6, #0x00
	ldsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x00]
	adds r1, r0, r5
	ldr r2, [r1, #0x00]
	adds r2, #0x88
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
_080249D8:
	ldr r2, [r7, #0x04]
	cmp r2, #0x00
	beq _08024A04
	adds r0, r2, r5
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r6, #0x00
	ldsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	adds r1, r0, r5
	ldr r2, [r1, #0x00]
	adds r2, #0x88
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
_08024A04:
	subs r4, #0x02
	adds r7, #0x08
	cmp r4, #0x00
	bne _080249AC
_08024A0C:
	movs r1, #0x8D
	lsls r1, r1, #0x01
	add r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08024B0A
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r6, r10
	adds r4, r6, r0
	ldr r0, _08024C30 @ =0x0000011B
	add r0, r10
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	beq _08024B0A
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08024A98
	cmp r1, #0x03
	bge _08024A76
	cmp r1, #0x02
	bge _08024A58
	ldr r2, [r4, #0x00]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08024A54
	ldr r1, [r6, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024A54:
	subs r5, #0x01
	adds r4, #0x04
_08024A58:
	ldr r2, [r4, #0x00]
	ldr r3, _08024C34 @ =0x00000216
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08024A72
	mov r6, r10
	ldr r1, [r6, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024A72:
	subs r5, #0x01
	adds r4, #0x04
_08024A76:
	ldr r2, [r4, #0x00]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08024A90
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024A90:
	subs r5, #0x01
	adds r4, #0x04
	cmp r5, #0x00
	beq _08024B0A
_08024A98:
	ldr r2, [r4, #0x00]
	ldr r6, _08024C34 @ =0x00000216
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r6, #0x20
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024AB4
	mov r0, r10
	ldr r1, [r0, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024AB4:
	ldr r2, [r4, #0x04]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024ACE
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024ACE:
	ldr r2, [r4, #0x08]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024AE8
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024AE8:
	ldr r2, [r4, #0x0C]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024B02
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024B02:
	subs r5, #0x04
	adds r4, #0x10
	cmp r5, #0x00
	bne _08024A98
_08024B0A:
	movs r1, #0x8E
	lsls r1, r1, #0x01
	add r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08024BEE
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r4, r10
	adds r7, r4, r0
	ldr r0, _08024C38 @ =0x0000011D
	add r0, r10
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08024BEE
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08024B8C
	cmp r1, #0x03
	bge _08024B6E
	cmp r1, #0x02
	bge _08024B54
	ldr r2, [r7, #0x00]
	ldr r6, _08024C3C @ =0x000002B5
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024B50
	adds r0, r2, #0x0
	bl sub_80402C4
_08024B50:
	subs r4, #0x01
	adds r7, #0x04
_08024B54:
	ldr r2, [r7, #0x00]
	ldr r1, _08024C3C @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024B6A
	adds r0, r2, #0x0
	bl sub_80402C4
_08024B6A:
	subs r4, #0x01
	adds r7, #0x04
_08024B6E:
	ldr r2, [r7, #0x00]
	ldr r3, _08024C3C @ =0x000002B5
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024B84
	adds r0, r2, #0x0
	bl sub_80402C4
_08024B84:
	subs r4, #0x01
	adds r7, #0x04
	cmp r4, #0x00
	beq _08024BEE
_08024B8C:
	ldr r2, [r7, #0x00]
	ldr r6, _08024C3C @ =0x000002B5
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BA4
	adds r0, r2, #0x0
	bl sub_80402C4
_08024BA4:
	ldr r2, [r7, #0x04]
	ldr r1, _08024C3C @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BBA
	adds r0, r2, #0x0
	bl sub_80402C4
_08024BBA:
	ldr r2, [r7, #0x08]
	ldr r3, _08024C3C @ =0x000002B5
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BD0
	adds r0, r2, #0x0
	bl sub_80402C4
_08024BD0:
	ldr r2, [r7, #0x0C]
	ldr r6, _08024C3C @ =0x000002B5
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BE6
	adds r0, r2, #0x0
	bl sub_80402C4
_08024BE6:
	subs r4, #0x04
	adds r7, #0x10
	cmp r4, #0x00
	bne _08024B8C
_08024BEE:
	ldr r0, _08024C40 @ =0x00000209
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08024C04
	mov r0, r10
	bl sub_803C5A4
_08024C04:
	ldr r0, _08024C44 @ =0x000002A9
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08024C6E
	ldr r0, _08024C28 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08024C48
	mov r0, r10
	bl sub_803CF64
	b _08024C6E
_08024C28: .4byte 0x00000291
_08024C2C: .4byte 0x0000010B
_08024C30: .4byte 0x0000011B
_08024C34: .4byte 0x00000216
_08024C38: .4byte 0x0000011D
_08024C3C: .4byte 0x000002B5
_08024C40: .4byte 0x00000209
_08024C44: .4byte 0x000002A9
_08024C48:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08024C68
	mov r0, r10
	bl sub_802F938
	b _08024C6E
_08024C68:
	mov r0, r10
	bl sub_802A740
_08024C6E:
	mov r0, r10
	bl sub_802FD70
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _08024DF4 @ =0x00000246
	add r4, r10
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	bl sub_8048174
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	bl sub_8048174
	ldr r1, _08024DF8 @ =0x00000113
	add r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08024D0A
	movs r0, #0x89
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r2, r10
	adds r5, r2, r0
	ldrb r4, [r1, #0x00]
	cmp r4, #0x00
	beq _08024D0A
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08024CEA
	cmp r1, #0x03
	bge _08024CDE
	cmp r1, #0x02
	bge _08024CD6
	ldm r5!, {r0}
	bl sub_8050078
	subs r4, #0x01
_08024CD6:
	ldm r5!, {r0}
	bl sub_8050078
	subs r4, #0x01
_08024CDE:
	ldm r5!, {r0}
	bl sub_8050078
	subs r4, #0x01
	cmp r4, #0x00
	beq _08024D0A
_08024CEA:
	ldr r0, [r5, #0x00]
	bl sub_8050078
	ldr r0, [r5, #0x04]
	bl sub_8050078
	ldr r0, [r5, #0x08]
	bl sub_8050078
	ldr r0, [r5, #0x0C]
	bl sub_8050078
	subs r4, #0x04
	adds r5, #0x10
	cmp r4, #0x00
	bne _08024CEA
_08024D0A:
	ldr r6, [sp, #0x03C]
	ldr r4, _08024DFC @ =0x0000010B
	add r4, r10
	ldm r6!, {r0}
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x00]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r3, [sp, #0x03C]
	ldr r0, [r3, #0x08]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r6, [sp, #0x03C]
	ldr r0, [r6, #0x0C]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x10]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x14]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x18]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x1C]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
_08024D64:
	ldr r0, _08024E00 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08024D84
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	ble _08024D84
	b _0802510E
_08024D84:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	subs r0, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _08024DB6
	mov r0, r10
	adds r0, #0xF8
	ldrh r1, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x40
	bne _08024DB6
	mov r0, r10
	adds r0, #0xFA
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1B
	mov r0, r10
	bl sub_80286AC
_08024DB6:
	ldr r1, _08024E04 @ =0x0000027A
	add r1, r10
	movs r0, #0x97
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r2, _08024E08 @ =0x0000027E
	add r2, r10
	strh r0, [r2, #0x00]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	add r1, r10
	movs r0, #0x98
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	add r1, r10
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08024E0C
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08024E1E
_08024DF4: .4byte 0x00000246
_08024DF8: .4byte 0x00000113
_08024DFC: .4byte 0x0000010B
_08024E00: .4byte 0x00000291
_08024E04: .4byte 0x0000027A
_08024E08: .4byte 0x0000027E
_08024E0C:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	ldr r1, _08024E34 @ =0x00000286
	add r1, r10
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _08024E1E
	strh r1, [r2, #0x00]
_08024E1E:
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r4, #0x00
	ldsh r0, [r2, r4]
	cmp r0, #0x00
	bge _08024E38
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08024E4C
	.byte 0x00, 0x00
_08024E34: .4byte 0x00000286
_08024E38:
	movs r6, #0x00
	ldsh r0, [r2, r6]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	add r1, r10
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08024E4C
	strh r1, [r2, #0x00]
_08024E4C:
	mov r7, r10
	adds r7, #0x28
	ldr r0, _08024FA0 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	str r7, [sp, #0x038]
	cmp r0, #0x00
	beq _08024E64
	b _08024FAC
_08024E64:
	ldr r0, _08024FA4 @ =0x0000010B
	add r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	mov r0, r10
	adds r0, #0xA8
	str r0, [sp, #0x03C]
	mov r1, r8
	cmp r1, #0x00
	bne _08024E7A
	b _080250A8
_08024E7A:
	movs r3, #0xCE
	lsls r3, r3, #0x02
	mov r9, r3
	negs r0, r1
	ands r0, r2
	cmp r0, #0x00
	beq _08024EF0
	mov r4, r10
	ldr r0, [r4, #0x28]
	adds r1, r0, r3
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r6, #0x00
	ldsh r1, [r3, r6]
	adds r0, r0, r1
	ldr r1, _08024FA8 @ =0x0000027E
	add r1, r10
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r4, #0x00
	ldsh r2, [r2, r4]
	ldr r4, [r3, #0x04]
	adds r3, r7, #0x0
	bl _call_via_r4
	mov r6, r10
	ldr r0, [r6, #0x28]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	movs r1, #0x00
	bl _call_via_r2
	ldr r0, [r6, #0x28]
	mov r4, r9
	adds r1, r0, r4
	ldr r1, [r1, #0x00]
	adds r1, #0x48
	movs r6, #0x00
	ldsh r2, [r1, r6]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	adds r7, #0x04
	mov r1, r8
	cmp r1, #0x00
	bne _08024EF0
	b _080250A8
_08024EF0:
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r6, _08024FA8 @ =0x0000027E
	add r6, r10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	movs r5, #0xA0
	lsls r5, r5, #0x02
	add r5, r10
	movs r4, #0x00
	ldsh r2, [r5, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	movs r1, #0x00
	bl _call_via_r2
	ldr r0, [r7, #0x00]
	mov r4, r9
	adds r1, r0, r4
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	adds r1, r0, r4
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r1, [r6, r2]
	movs r4, #0x00
	ldsh r2, [r5, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x04]
	mov r6, r9
	adds r1, r0, r6
	ldr r2, [r1, #0x00]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	movs r1, #0x00
	bl _call_via_r2
	ldr r0, [r7, #0x04]
	adds r1, r0, r6
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r4, #0x00
	ldsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	movs r6, #0x02
	negs r6, r6
	add r8, r6
	adds r7, #0x08
	mov r0, r8
	cmp r0, #0x00
	bne _08024EF0
	b _080250A8
	.byte 0x00, 0x00
_08024FA0: .4byte 0x00000291
_08024FA4: .4byte 0x0000010B
_08024FA8: .4byte 0x0000027E
_08024FAC:
	ldr r0, _0802501C @ =0x0000010B
	add r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	mov r1, r10
	adds r1, #0xA8
	str r1, [sp, #0x03C]
	cmp r0, #0x00
	beq _080250A8
	movs r3, #0xCE
	lsls r3, r3, #0x02
	mov r9, r3
	negs r0, r0
	ands r0, r2
	cmp r0, #0x00
	beq _08025024
	mov r4, r10
	ldr r0, [r4, #0x28]
	adds r1, r0, r3
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r6, #0x00
	ldsh r1, [r3, r6]
	adds r0, r0, r1
	ldr r1, _08025020 @ =0x0000027E
	add r1, r10
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r4, #0x00
	ldsh r2, [r2, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	mov r6, r10
	ldr r0, [r6, #0x28]
	mov r2, r9
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	adds r1, #0x48
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	movs r4, #0x01
	negs r4, r4
	add r8, r4
	mov r7, r10
	adds r7, #0x2C
	b _080250A2
	.byte 0x00, 0x00
_0802501C: .4byte 0x0000010B
_08025020: .4byte 0x0000027E
_08025024:
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r6, _08025170 @ =0x0000027E
	add r6, r10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	movs r5, #0xA0
	lsls r5, r5, #0x02
	add r5, r10
	movs r4, #0x00
	ldsh r2, [r5, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	mov r4, r9
	adds r1, r0, r4
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r2, #0x00
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r1, [r6, r4]
	movs r6, #0x00
	ldsh r2, [r5, r6]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x04]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	movs r4, #0x02
	negs r4, r4
	add r8, r4
	adds r7, #0x08
_080250A2:
	mov r6, r8
	cmp r6, #0x00
	bne _08025024
_080250A8:
	ldr r6, [sp, #0x03C]
	movs r7, #0x08
_080250AC:
	ldr r0, [r6, #0x00]
	ldr r5, _08025170 @ =0x0000027E
	add r5, r10
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r4, #0xA0
	lsls r4, r4, #0x02
	add r4, r10
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x00]
	bl sub_804E450
	ldr r0, [r6, #0x04]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x04]
	bl sub_804E450
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x08]
	bl sub_804E450
	ldr r0, [r6, #0x0C]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x0C]
	bl sub_804E450
	subs r7, #0x04
	adds r6, #0x10
	cmp r7, #0x00
	bne _080250AC
_0802510E:
	ldr r0, _08025174 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802512E
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _0802512E
	b _08025444
_0802512E:
	movs r4, #0x82
	lsls r4, r4, #0x02
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802518E
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r3, [r0, #0x00]
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	bne _0802518E
	ldr r1, [r4, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x09
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	bne _08025178
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r2, r4
	b _08025186
	.byte 0x00, 0x00
_08025170: .4byte 0x0000027E
_08025174: .4byte 0x00000291
_08025178:
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r1, r0
	bne _0802518E
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r0, r3, r6
_08025186:
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x0E]
	subs r0, #0x01
	strh r0, [r1, #0x0E]
_0802518E:
	movs r5, #0x80
	lsls r5, r5, #0x02
	add r5, r10
	ldr r3, [r5, #0x00]
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	mov r2, r10
	adds r2, #0x28
	str r2, [sp, #0x038]
	cmp r1, r0
	beq _0802527C
	movs r0, #0x01
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	mov r8, r4
	adds r7, r0, r4
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r1, r0, #0x1E
	lsrs r1, r1, #0x1E
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, r1
	bls _080251CC
	adds r0, r1, #0x0
_080251CC:
	adds r2, r0, #0x0
	mov r6, r8
	adds r0, r3, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _080251EE
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_080251EE:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _08025210
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_08025210:
	ldr r0, [r5, #0x00]
	movs r6, #0xDB
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _08025234
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_08025234:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _08025254
	movs r0, #0x03
	ands r2, r0
	lsls r1, r2, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_08025254:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _08025268
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_08025268:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _0802527C
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_0802527C:
	movs r5, #0x81
	lsls r5, r5, #0x02
	add r5, r10
	ldr r3, [r5, #0x00]
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08025364
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	ldr r1, [sp, #0x038]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	mov r8, r2
	adds r7, r0, r2
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r1, r0, #0x1E
	lsrs r1, r1, #0x1E
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, r1
	bls _080252B4
	adds r0, r1, #0x0
_080252B4:
	adds r2, r0, #0x0
	mov r4, r8
	adds r0, r3, r4
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _080252D6
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_080252D6:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _080252F8
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_080252F8:
	ldr r0, [r5, #0x00]
	movs r6, #0xDB
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _0802531C
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_0802531C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _0802533C
	movs r0, #0x03
	ands r2, r0
	lsls r1, r2, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_0802533C:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _08025350
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_08025350:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _08025364
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_08025364:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08025376
	adds r0, #0xFF
_08025376:
	asrs r3, r0, #0x08
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _0802538A
	adds r1, #0xFF
_0802538A:
	asrs r1, r1, #0x08
	cmp r3, r1
	blt _080253AA
	cmp r3, r1
	bne _080253D4
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	cmp r0, r1
	bne _080253D4
_080253AA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _080253D0 @ =0x0000010B
	add r4, r10
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38
	b _08025412
_080253D0: .4byte 0x0000010B
_080253D4:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r5, _080254B4 @ =0x0000010B
	add r5, r10
	ldrb r2, [r5, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r3, [r0, #0x00]
	ldr r1, [sp, #0x038]
	ldr r0, _080254B8 @ =0x00000246
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r4, #0x1C
	ands r4, r0
	cmp r4, #0x0C
	bne _08025404
	mov r1, r10
	adds r1, #0x2C
_08025404:
	ldrb r2, [r5, #0x00]
	cmp r4, #0x0C
	bne _0802540C
	subs r2, #0x01
_0802540C:
	adds r0, r3, #0x0
	bl sub_8049C38
_08025412:
	mov r0, r10
	bl sub_8029624
	bl sub_8021F7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r6, #0xD4
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x3F
	ands r0, r1
	cmp r0, #0x00
	beq _08025444
	mov r0, r10
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	add r1, r10
	strh r0, [r1, #0x00]
_08025444:
	movs r0, #0xC1
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r1, _080254BC @ =0x0000027E
	add r1, r10
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r3, #0x00
	ldsh r2, [r2, r3]
	bl sub_8057C9C
	ldr r4, [sp, #0x040]
	ldrb r7, [r4, #0x00]
	movs r0, #0x04
	ands r0, r7
	cmp r0, #0x00
	beq _080254A2
	mov r6, r10
	ldr r0, [r6, #0x1C]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r3, r0, r1
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x02
	ands r0, r7
	movs r1, #0x74
	cmp r0, #0x00
	bne _0802548C
	movs r1, #0x04
_0802548C:
	adds r0, r2, #0x0
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_80EF618
	ldr r2, [sp, #0x040]
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080254A2:
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080254B4: .4byte 0x0000010B
_080254B8: .4byte 0x00000246
_080254BC: .4byte 0x0000027E
