	.syntax unified
	.text

	thumb_func_start sub_804857C
sub_804857C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl sub_80403C4
	movs r0, #0xDE
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r9, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	mov r10, r2
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080485A6
	b _080486D8
_080485A6:
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r1, [r0, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r5, r7, r1
	str r0, [r5, #0x00]
	ldr r2, _080486CC @ =0x0000037B
	adds r6, r7, r2
	ldrb r1, [r6, #0x00]
	movs r3, #0x00
	mov r8, r3
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	bl sub_801E150
	ldr r0, [r5, #0x00]
	ldrb r1, [r6, #0x00]
	movs r3, #0xDF
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r2, [r2, #0x00]
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r3, [r5, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x00]
	ldr r1, _080486D0 @ =0x00000379
	adds r4, r7, r1
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x12]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x00]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r1, [r5, #0x00]
	ldr r2, _080486D4 @ =0x0000037E
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x2A]
	ldr r1, [r5, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x2C]
	ldr r1, [r5, #0x00]
	adds r2, #0x04
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x00]
	adds r3, #0x04
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x06]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	b _080486F4
	.byte 0x00, 0x00
_080486CC: .4byte 0x0000037B
_080486D0: .4byte 0x00000379
_080486D4: .4byte 0x0000037E
_080486D8:
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	adds r1, r3, #0x0
	movs r2, #0x01
	bl sub_8020DD0
	movs r2, #0xDB
	lsls r2, r2, #0x02
	adds r1, r7, r2
	str r0, [r1, #0x00]
_080486F4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
