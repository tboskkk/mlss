	.syntax unified
	.text

	thumb_func_start sub_8049AB4
sub_8049AB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	cmp r7, #0x00
	beq _08049ACC
	cmp r7, #0x01
	beq _08049B64
	b _08049BC8
_08049ACC:
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, _08049B5C @ =0x0000800B
	strh r2, [r0, #0x00]
	movs r0, #0xDB
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x02
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r5, #0x00]
	str r7, [sp, #0x000]
	mov r1, r8
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r1, _08049B60 @ =0x00000353
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [r5, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r3, r6, r2
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	b _08049BC8
_08049B5C: .4byte 0x0000800B
_08049B60: .4byte 0x00000353
_08049B64:
	adds r0, r6, #0x0
	bl sub_80409F4
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08049BB4 @ =0x00000356
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r0, #0xD6
	lsls r0, r0, #0x02
	adds r3, r6, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049BC0
	ldr r1, _08049BB8 @ =0x0000035B
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049BBC @ =0x00001032
	cmp r0, #0x00
	beq _08049BC2
	adds r1, #0x0B
	b _08049BC2
	.byte 0x00, 0x00
_08049BB4: .4byte 0x00000356
_08049BB8: .4byte 0x0000035B
_08049BBC: .4byte 0x00001032
_08049BC0:
	ldr r1, _08049BD4 @ =0x0000104B
_08049BC2:
	adds r0, r6, #0x0
	bl sub_8049000
_08049BC8:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08049BD4: .4byte 0x0000104B
