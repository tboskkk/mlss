	.syntax unified
	.text

	thumb_func_start sub_80326F4
sub_80326F4:
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
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x23
	beq _08032718
	cmp r0, #0x29
	beq _08032718
	b _08032892
_08032718:
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08032724
	adds r0, #0xFF
_08032724:
	asrs r3, r0, #0x08
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x17
	adds r1, r5, #0x0
	adds r1, #0x28
	str r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08032748
	adds r1, #0xFF
_08032748:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0x08
	cmp r0, r1
	bge _08032754
	b _08032892
_08032754:
	subs r0, #0x10
	cmp r0, r1
	ble _0803275C
	b _08032892
_0803275C:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r0, r0, r5
	mov r10, r0
	ldr r1, [r0, #0x00]
	movs r0, #0x27
	strh r0, [r2, #0x04]
	strh r0, [r1, #0x04]
	mov r1, r10
	ldr r2, [r1, #0x00]
	ldr r1, [r7, #0x00]
	ldr r4, _080328A4 @ =0x00000351
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
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x17
	ldr r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _080327A2
	adds r3, #0xFF
_080327A2:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _080327AC
	adds r0, #0xFF
_080327AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080327BC
	adds r0, #0xFF
_080327BC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	ldr r0, _080328A8 @ =0x0000020A
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _080328AC @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r7, #0x00]
	ldr r1, _080328B0 @ =0x0000020D
	mov r8, r1
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	add r1, r8
	ldrb r2, [r1, #0x00]
	movs r4, #0x11
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r0, r6
	ldr r1, [r1, #0x00]
	mov r9, r1
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x17
	ldr r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r5, r1, #0x02
	mov r0, r9
	ldrb r3, [r0, #0x1F]
	movs r2, #0x0D
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	orrs r0, r5
	movs r5, #0x04
	negs r5, r5
	ands r0, r5
	orrs r1, r0
	mov r0, r9
	strb r1, [r0, #0x1F]
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r8
	ldrb r1, [r0, #0x00]
	ands r4, r1
	strb r4, [r0, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldr r0, [r7, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x17
	ldr r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	lsls r3, r0, #0x02
	ldrb r1, [r4, #0x1F]
	ands r2, r1
	orrs r2, r3
	ands r2, r5
	orrs r2, r0
	strb r2, [r4, #0x1F]
	movs r0, #0x5D
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8E
	bl play_sfx_80195B4
_08032892:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080328A4: .4byte 0x00000351
_080328A8: .4byte 0x0000020A
_080328AC: .4byte 0xFFFFFE7F
_080328B0: .4byte 0x0000020D
