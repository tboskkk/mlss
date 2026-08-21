	.syntax unified
	.text

	thumb_func_start sub_811B478
sub_811B478:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r5, [r7, #0x14]
	ldr r0, _0811B58C @ =0x000001BD
	adds r0, r0, r7
	mov r8, r0
	ldrb r6, [r0, #0x00]
	cmp r6, #0x00
	bne _0811B494
	b _0811B648
_0811B494:
	cmp r6, #0x02
	beq _0811B49A
	b _0811B5B4
_0811B49A:
	ldr r0, [r7, #0x20]
	ldr r1, _0811B590 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r1, #0xAB
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r4, #0x01
	strb r4, [r0, #0x00]
	ldr r2, _0811B594 @ =0x0000014F
	adds r1, r7, r2
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	movs r3, #0xBF
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r0, #0x00
	mov r9, r0
	movs r0, #0xF9
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0811B598 @ =0x02000040
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x19
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r1, r7, #0x0
	adds r1, #0x88
	ldr r2, [r1, #0x00]
	movs r0, #0x03
	strb r0, [r2, #0x0C]
	ldr r2, [r1, #0x00]
	movs r3, #0xE5
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x14]
	ldr r0, [r1, #0x00]
	strb r4, [r0, #0x1C]
	ldr r2, [r1, #0x00]
	ldr r0, _0811B59C @ =0x0000FF88
	strh r0, [r2, #0x18]
	ldr r2, [r1, #0x00]
	movs r0, #0x0F
	strb r0, [r2, #0x1B]
	ldr r0, [r1, #0x00]
	ldr r2, _0811B5A0 @ =0x0000FF60
	strh r2, [r0, #0x16]
	ldr r0, [r1, #0x00]
	movs r3, #0xF0
	strb r3, [r0, #0x1A]
	ldr r0, [r1, #0x00]
	strb r4, [r0, #0x1D]
	ldr r0, [r1, #0x00]
	strh r5, [r0, #0x24]
	ldr r0, [r1, #0x00]
	adds r0, #0x2C
	strb r4, [r0, #0x00]
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x26]
	ldr r0, [r1, #0x00]
	adds r0, #0x2A
	strb r3, [r0, #0x00]
	ldr r0, [r1, #0x00]
	strh r5, [r0, #0x28]
	ldr r0, [r1, #0x00]
	adds r0, #0x2B
	mov r2, r9
	strb r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r0, #0x2D
	strb r4, [r0, #0x00]
	adds r3, #0x62
	adds r0, r7, r3
	strb r6, [r0, #0x00]
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r1, _0811B5A4 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _0811B5A8 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _0811B5AC @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	movs r1, #0xB2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strh r4, [r0, #0x00]
	ldr r2, _0811B5B0 @ =0x00000167
	adds r0, r7, r2
	mov r3, r9
	strb r3, [r0, #0x00]
	mov r0, r8
	strb r3, [r0, #0x00]
	b _0811B782
_0811B58C: .4byte 0x000001BD
_0811B590: .4byte 0x0000FFFF
_0811B594: .4byte 0x0000014F
_0811B598: .4byte 0x02000040
_0811B59C: .4byte 0x0000FF88
_0811B5A0: .4byte 0x0000FF60
_0811B5A4: .4byte 0x040000B0
_0811B5A8: .4byte 0x0000C5FF
_0811B5AC: .4byte 0x00007FFF
_0811B5B0: .4byte 0x00000167
_0811B5B4:
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0811B5DC
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811B5CC
	b _0811B782
_0811B5CC:
	adds r0, r2, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _0811B5DC
	b _0811B782
_0811B5DC:
	movs r3, #0x00
	mov r1, r8
	strb r3, [r1, #0x00]
	movs r2, #0xDE
	lsls r2, r2, #0x01
	adds r4, r7, r2
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	eors r0, r1
	strb r0, [r4, #0x00]
	ldr r0, [r7, #0x3C]
	ldrb r1, [r4, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r3, _0811B644 @ =0x0200000C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, #0x08
	movs r2, #0xE4
	lsls r2, r2, #0x01
	adds r1, r7, r2
	adds r0, r1, r0
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r2, #0x02
	orrs r0, r2
	strh r0, [r3, #0x00]
	subs r3, #0x02
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, #0x06
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	orrs r0, r2
	strh r0, [r3, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0811B782
	.byte 0x00, 0x00
_0811B644: .4byte 0x0200000C
_0811B648:
	movs r0, #0xC0
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0811B666
	movs r0, #0x02
	mov r1, r8
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x3C]
	bl sprite_hide_8021F20
_0811B666:
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0811B676
	b _0811B782
_0811B676:
	movs r2, #0xDE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811B6F0
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0811B6B2
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811B6A6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x03
	bl play_sfx_80195B4
	b _0811B6BC
_0811B6A6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x19
	bl play_sfx_80195B4
	b _0811B6BC
_0811B6B2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x19
	bl play_sfx_80195B4
_0811B6BC:
	ldr r0, _0811B734 @ =0x000001BD
	adds r2, r7, r0
	movs r1, #0x00
	movs r0, #0x01
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x3C]
	str r1, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x3C]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0811B6F0:
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0811B782
	movs r2, #0xDE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0811B782
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0811B744
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811B738
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
	b _0811B74E
_0811B734: .4byte 0x000001BD
_0811B738:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x15
	bl play_sfx_80195B4
	b _0811B74E
_0811B744:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
_0811B74E:
	ldr r0, _0811B794 @ =0x000001BD
	adds r2, r7, r0
	movs r1, #0x00
	movs r0, #0x01
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x3C]
	str r1, [sp, #0x000]
	movs r2, #0x05
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x3C]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0811B782:
	movs r0, #0x00
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811B794: .4byte 0x000001BD
