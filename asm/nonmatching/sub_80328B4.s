	.syntax unified
	.text

	thumb_func_start sub_80328B4
sub_80328B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r7, r5, r0
	ldr r2, [r7, #0x00]
	ldrh r1, [r2, #0x04]
	adds r0, r1, #0x0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _080328DE
	cmp r1, #0x2C
	beq _080328DE
	b _08032A6A
_080328DE:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	asrs r1, r1, #0x19
	lsls r2, r1, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	movs r3, #0x95
	lsls r3, r3, #0x02
	adds r2, r5, r3
	mov r4, r10
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r2, r5, r2
	str r2, [sp, #0x00C]
	ldr r2, [r2, #0x00]
	ldr r1, [r7, #0x00]
	movs r0, #0x2A
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r3, [sp, #0x00C]
	ldr r2, [r3, #0x00]
	ldr r1, [r7, #0x00]
	ldr r4, _08032A7C @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r7, #0x00]
	mov r4, r10
	ldr r3, [r4, #0x0C]
	cmp r3, #0x00
	bge _0803294C
	adds r3, #0xFF
_0803294C:
	asrs r3, r3, #0x08
	mov r1, r10
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08032958
	adds r0, #0xFF
_08032958:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08032968
	adds r0, #0xFF
_08032968:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	ldr r3, _08032A80 @ =0x0000020A
	adds r2, r5, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _08032A84 @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r4, _08032A88 @ =0x00000252
	adds r1, r5, r4
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x00]
	ldr r0, _08032A8C @ =0x0000020D
	mov r12, r0
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r5, #0x11
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	mov r9, r0
	mov r1, r10
	adds r1, r1, r6
	mov r8, r1
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r4, r1, #0x02
	mov r2, r9
	ldrb r3, [r2, #0x1F]
	movs r2, #0x0D
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	orrs r0, r4
	movs r4, #0x04
	negs r4, r4
	ands r0, r4
	orrs r1, r0
	mov r3, r9
	strb r1, [r3, #0x1F]
	ldr r0, [sp, #0x00C]
	ldr r1, [r0, #0x00]
	add r1, r12
	ldrb r3, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r3
	strb r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	ldr r0, [r1, #0x00]
	adds r0, r0, r6
	ldr r6, [r0, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r3, r0, #0x02
	ldrb r1, [r6, #0x1F]
	ands r2, r1
	orrs r2, r3
	movs r3, #0x03
	ands r2, r4
	orrs r0, r2
	strb r0, [r6, #0x1F]
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	subs r0, #0x01
	ands r0, r3
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, #0x1F]
	mov r1, r10
	add r1, r12
	ldrb r0, [r1, #0x00]
	ands r5, r0
	strb r5, [r1, #0x00]
	ldr r1, [r7, #0x00]
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	ldr r3, [r1, #0x00]
	ldr r2, [r7, #0x00]
	movs r5, #0x85
	lsls r5, r5, #0x02
	adds r2, r2, r5
	ldrb r4, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r3, r3, r5
	ldrb r0, [r3, #0x00]
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
_08032A6A:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08032A7C: .4byte 0x00000351
_08032A80: .4byte 0x0000020A
_08032A84: .4byte 0xFFFFFE7F
_08032A88: .4byte 0x00000252
_08032A8C: .4byte 0x0000020D
