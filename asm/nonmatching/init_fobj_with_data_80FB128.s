	.syntax unified
	.text

	thumb_func_start init_fobj_with_data_80FB128
init_fobj_with_data_80FB128: @ 080FB128
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r2
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x0E
	ldr r2, _080FB3F8 @ =0x083D6C58
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x08
	ldrb r2, [r3, #0x06]
	orrs r0, r2
	subs r3, r3, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r7, r3, r0
	ldrb r1, [r7, #0x03]
	movs r2, #0x1F
	ands r2, r1
	ldrb r0, [r7, #0x00]
	lsls r3, r0, #0x04
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FB16E
	movs r0, #0x20
	negs r0, r0
	orrs r2, r0
_080FB16E:
	adds r0, r3, r2
	lsls r5, r0, #0x08
	ldrb r1, [r7, #0x04]
	movs r2, #0x1F
	ands r2, r1
	ldrb r0, [r7, #0x01]
	lsls r3, r0, #0x04
	movs r0, #0x10
	ands r0, r1
	adds r4, r1, #0x0
	cmp r0, #0x00
	beq _080FB18C
	movs r0, #0x20
	negs r0, r0
	orrs r2, r0
_080FB18C:
	adds r0, r3, r2
	lsls r2, r0, #0x08
	lsrs r3, r4, #0x02
	movs r0, #0x18
	ands r3, r0
	ldrb r0, [r7, #0x03]
	lsrs r0, r0, #0x05
	orrs r3, r0
	ldrb r1, [r7, #0x02]
	movs r0, #0x7F
	ands r0, r1
	lsls r1, r0, #0x03
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0x00
	beq _080FB1B2
	movs r0, #0x20
	negs r0, r0
	orrs r3, r0
_080FB1B2:
	adds r0, r1, r3
	lsls r3, r0, #0x08
	movs r0, #0x01
	mov r9, r0
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r10
	adds r1, r5, #0x0
	bl sub_8047F60
	ldrb r0, [r7, #0x10]
	movs r6, #0x01
	movs r1, #0x83
	lsls r1, r1, #0x02
	add r1, r10
	mov r12, r1
	mov r1, r9
	ands r1, r0
	mov r3, r12
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _080FB3FC @ =0x0000020F
	add r2, r10
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	ldrb r2, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r3, [sp, #0x008]
	strb r0, [r3, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x01
	movs r1, #0x07
	ands r0, r1
	ands r0, r1
	lsls r0, r0, #0x01
	mov r3, r12
	ldrb r2, [r3, #0x00]
	subs r1, #0x16
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x04
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x05
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x05
	movs r4, #0x21
	negs r4, r4
	adds r3, r4, #0x0
	ands r3, r2
	orrs r3, r0
	mov r0, r12
	strb r3, [r0, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x06
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x06
	movs r5, #0x41
	negs r5, r5
	adds r1, r5, #0x0
	ands r1, r3
	orrs r1, r0
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x07
	ands r0, r6
	lsls r0, r0, #0x07
	movs r3, #0x7F
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #0x00]
	ldrb r0, [r7, #0x11]
	mov r1, r9
	ands r1, r0
	ldr r3, _080FB400 @ =0x0000020D
	add r3, r10
	ands r1, r6
	ldrb r0, [r3, #0x00]
	mov r2, r8
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x01
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x01
	movs r1, #0x03
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x02
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x03
	movs r2, #0x09
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x03
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x00C]
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x12]
	lsrs r0, r0, #0x07
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x02
	movs r1, #0x05
	negs r1, r1
	mov r8, r1
	ldr r2, [sp, #0x00C]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x04
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x05
	ands r4, r1
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x05
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x06
	ands r4, r5
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x06
	ands r0, r6
	ldr r3, _080FB404 @ =0x0000020E
	add r3, r10
	ands r0, r6
	lsls r0, r0, #0x02
	ldrb r2, [r3, #0x00]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x12]
	lsrs r0, r0, #0x03
	movs r2, #0x07
	ands r0, r2
	ands r0, r2
	lsls r0, r0, #0x03
	subs r2, #0x40
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x07
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x06
	ands r5, r2
	orrs r5, r0
	strb r5, [r3, #0x00]
	ldrb r0, [r7, #0x12]
	lsrs r0, r0, #0x06
	ands r0, r6
	lsls r0, r0, #0x07
	movs r1, #0x7F
	ands r5, r1
	orrs r5, r0
	strb r5, [r3, #0x00]
	ldrb r0, [r7, #0x05]
	ands r1, r0
	movs r2, #0xFF
	cmp r1, #0x7F
	beq _080FB34E
	adds r2, r1, #0x0
_080FB34E:
	ldr r0, _080FB408 @ =0x00000222
	add r0, r10
	strb r2, [r0, #0x00]
	ldrb r0, [r7, #0x06]
	movs r1, #0x3F
	ands r1, r0
	movs r2, #0xFF
	cmp r1, #0x3F
	beq _080FB362
	adds r2, r1, #0x0
_080FB362:
	ldr r0, _080FB40C @ =0x00000223
	add r0, r10
	strb r2, [r0, #0x00]
	ldrb r1, [r7, #0x02]
	lsrs r1, r1, #0x07
	ands r1, r6
	ldr r3, _080FB410 @ =0x00000216
	add r3, r10
	ands r1, r6
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r0, [r7, #0x07]
	mov r1, r10
	adds r1, #0x55
	strb r0, [r1, #0x00]
	movs r2, #0x8A
	lsls r2, r2, #0x02
	add r2, r10
	ldrb r1, [r7, #0x0B]
	lsls r1, r1, #0x18
	ldrb r0, [r7, #0x0A]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0x09]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldrb r0, [r7, #0x08]
	orrs r1, r0
	str r1, [r2, #0x00]
	movs r2, #0x8B
	lsls r2, r2, #0x02
	add r2, r10
	ldrb r1, [r7, #0x0F]
	lsls r1, r1, #0x18
	ldrb r0, [r7, #0x0E]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0x0D]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldrb r0, [r7, #0x0C]
	orrs r1, r0
	str r1, [r2, #0x00]
	ldrb r1, [r7, #0x12]
	movs r0, #0x07
	ands r0, r1
	lsls r1, r0, #0x0F
	mov r3, r12
	ldr r2, [r3, #0x00]
	ldr r3, _080FB414 @ =0xFFFC7FFF
	ands r2, r3
	orrs r2, r1
	mov r1, r12
	str r2, [r1, #0x00]
	cmp r0, #0x00
	bne _080FB418
	adds r0, r3, #0x0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	mov r2, r12
	str r0, [r2, #0x00]
	ldr r3, [sp, #0x008]
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	strb r0, [r3, #0x00]
	b _080FB424
	.byte 0x00, 0x00
_080FB3F8: .4byte dword_83D6C58 @ =0x083D6C58
_080FB3FC: .4byte 0x0000020F
_080FB400: .4byte 0x0000020D
_080FB404: .4byte 0x0000020E
_080FB408: .4byte 0x00000222
_080FB40C: .4byte 0x00000223
_080FB410: .4byte 0x00000216
_080FB414: .4byte 0xFFFC7FFF
_080FB418:
	ldr r1, [sp, #0x008]
	ldrb r0, [r1, #0x00]
	movs r1, #0x04
	orrs r0, r1
	ldr r2, [sp, #0x008]
	strb r0, [r2, #0x00]
_080FB424:
	ldr r0, _080FB444 @ =0x0000020F
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	mov r0, r10
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FB444: .4byte 0x0000020F
