	.syntax unified
	.text

	thumb_func_start sub_80F2AD8
sub_80F2AD8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	adds r7, r1, #0x0
	ldr r1, [r7, #0x00]
	ldr r0, [r7, #0x04]
	cmp r1, r0
	beq _080F2AF4
_080F2AF0:
	movs r0, #0x00
	b _080F2C96
_080F2AF4:
	adds r3, r7, #0x0
	adds r3, #0xA0
	ldrh r1, [r3, #0x00]
	movs r0, #0x08
	ands r0, r1
	str r3, [sp, #0x008]
	cmp r0, #0x00
	beq _080F2B24
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	adds r1, r1, r0
	adds r1, #0xA0
	ldrh r2, [r1, #0x00]
	ldr r0, _080F2BCC @ =0x0000FFFB
	ands r0, r2
	strh r0, [r1, #0x00]
	ldrh r1, [r3, #0x00]
	ldr r0, _080F2BD0 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r3, #0x00]
_080F2B24:
	ldrh r0, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F2B32
	b _080F2C46
_080F2B32:
	ldr r0, [r7, #0x08]
	cmp r0, #0x00
	bne _080F2B3A
	b _080F2C44
_080F2B3A:
	str r0, [r7, #0x00]
	ldr r0, [r7, #0x0C]
	str r0, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xA2
	str r0, [sp, #0x004]
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	movs r1, #0xA5
	adds r1, r1, r7
	mov r10, r1
	ldrb r1, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA4
	strb r1, [r0, #0x00]
	movs r2, #0xAC
	adds r2, r2, r7
	mov r9, r2
	ldr r0, [r2, #0x00]
	str r0, [r7, #0x10]
	movs r0, #0xB0
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x14]
	adds r1, r7, #0x0
	adds r1, #0x98
	adds r6, r7, #0x0
	adds r6, #0xF4
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r5, r7, #0x0
	adds r5, #0xF8
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xFC
	ldrb r0, [r4, #0x00]
	adds r1, #0x0A
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB4
	subs r1, #0x4E
	movs r2, #0x20
	bl CpuSet
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x2C]
	ldr r2, _080F2BD4 @ =0x0000179C
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #0x004]
	mov r12, r2
	mov r3, r8
	cmp r0, #0x0B
	bhi _080F2C0C
	ldrb r2, [r1, #0x00]
	subs r1, r2, #0x1
	cmp r1, #0x07
	bgt _080F2BDC
	ldr r0, _080F2BD8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F2BEC
_080F2BCC: .4byte 0x0000FFFB
_080F2BD0: .4byte 0x0000FFF7
_080F2BD4: .4byte 0x0000179C
_080F2BD8: .4byte 0x03000FD8
_080F2BDC:
	ldr r1, _080F2C38 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r1, r0, r2
_080F2BEC:
	ldr r0, [sp, #0x008]
	ldrh r2, [r0, #0x00]
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _080F2C04
	adds r0, r1, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _080F2C08
_080F2C04:
	ldr r0, _080F2C3C @ =0xFFFFFDFF
	ands r2, r0
_080F2C08:
	ldr r1, [sp, #0x008]
	strh r2, [r1, #0x00]
_080F2C0C:
	movs r0, #0x00
	str r0, [r3, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	str r0, [r7, #0x0C]
	str r0, [r7, #0x08]
	str r0, [r5, #0x00]
	str r0, [r6, #0x00]
	movs r1, #0x00
	mov r2, r12
	strh r0, [r2, #0x00]
	strb r1, [r4, #0x00]
	mov r0, r10
	strb r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	ldrh r1, [r2, #0x00]
	ldr r0, _080F2C40 @ =0x00000E34
	ands r0, r1
	cmp r0, #0x00
	bne _080F2C94
	b _080F2AF0
	.byte 0x00, 0x00
_080F2C38: .4byte 0x03000FDC
_080F2C3C: .4byte 0xFFFFFDFF
_080F2C40: .4byte 0x00000E34
_080F2C44:
	strh r0, [r3, #0x00]
_080F2C46:
	ldr r0, [sp, #0x000]
	ldr r1, [r0, #0x2C]
	ldr r2, _080F2CA8 @ =0x0000179C
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x05
	bhi _080F2C94
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r1, r0
	movs r2, #0x06
	movs r4, #0x01
	adds r3, r0, #0x0
_080F2C66:
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F2C94
	adds r7, r7, r3
	lsls r0, r2, #0x10
	ldr r1, _080F2CAC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _080F2C66
	ldr r0, _080F2CB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _080F2CB4 @ =0x000002BF
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080F2C94:
	movs r0, #0x01
_080F2C96:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F2CA8: .4byte 0x0000179C
_080F2CAC: .4byte 0xFFFF0000
_080F2CB0: .4byte 0x03000FD8
_080F2CB4: .4byte 0x000002BF
