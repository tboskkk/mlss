	.syntax unified
	.text

	thumb_func_start sub_8050FD0
sub_8050FD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldrb r1, [r4, #0x00]
	movs r2, #0x01
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08050FF0
	b _08051114
_08050FF0:
	movs r0, #0x01
	orrs r1, r0
	strb r1, [r4, #0x00]
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r5, r6, r3
	ldr r7, [r5, #0x00]
	cmp r7, #0x00
	beq _0805109C
	movs r0, #0x39
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	bl sub_8020D40
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r2, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
	str r2, [r4, #0x00]
	ldr r1, _08051098 @ =0x0000020F
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08051114
	adds r0, r2, #0x0
	bl sub_8020D40
	b _08051114
_08051098: .4byte 0x0000020F
_0805109C:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldr r2, _08051120 @ =0x083A0CF8
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	str r7, [sp, #0x000]
	movs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, _08051124 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9958
	ldrh r1, [r4, #0x00]
	ldr r0, _08051128 @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r1, _0805112C @ =0x0000023B
	adds r0, r6, r1
	strb r7, [r0, #0x00]
	ldr r3, _08051130 @ =0x0000033E
	adds r2, r6, r3
	ldrh r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r3, _08051134 @ =0x00000342
	adds r1, r6, r3
	ldr r0, _08051138 @ =0x0000FFFF
	strh r0, [r1, #0x00]
_08051114:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08051120: .4byte dword_83A0CF8 @ =0x083A0CF8
_08051124: .4byte 0x03000FC0
_08051128: .4byte 0xFFFFFC3F
_0805112C: .4byte 0x0000023B
_08051130: .4byte 0x0000033E
_08051134: .4byte 0x00000342
_08051138: .4byte 0x0000FFFF
