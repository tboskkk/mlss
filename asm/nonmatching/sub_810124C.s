	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08101288 @ =0x0810124D
	str r0, [r5, #0x04]
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08101260
	b _08101362
_08101260:
	ldr r0, _0810128C @ =0x0810136D
	str r0, [r5, #0x04]
	ldr r0, _08101290 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _08101294
	movs r0, #0x80
	lsls r0, r0, #0x02
	bl sub_80F7590
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl sub_80F7538
	b _08101354
	.byte 0x00, 0x00
_08101288: .4byte sub_810124C
_0810128C: .4byte sub_810136C
_08101290: .4byte 0x03000FD8
_08101294:
	ldrb r1, [r2, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08101348
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r4, #0x00
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r2, #0x06
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081012F6
	mov r0, r12
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081012F6
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081012F6
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081012F6
	bl sub_807EF54
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_081012F6:
	cmp r4, #0x00
	beq _08101328
	ldr r2, _0810131C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	subs r1, r4, #0x1
	ldr r3, _08101320 @ =0x0000033F
	adds r0, r0, r3
	strb r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	negs r0, r4
	adds r0, #0x02
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r0, _08101324 @ =0x081068A9
	str r0, [r5, #0x04]
	b _08101336
	.byte 0x00, 0x00
_0810131C: .4byte 0x03000FD8
_08101320: .4byte 0x0000033F
_08101324: .4byte sub_81068A8
_08101328:
	ldr r0, _08101344 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
_08101336:
	movs r0, #0x08
	bl sub_80F7590
	movs r0, #0x80
	bl sub_80F7538
	b _08101354
_08101344: .4byte 0x03000FD8
_08101348:
	movs r0, #0x08
	bl sub_80F7590
	movs r0, #0x80
	bl sub_80F7538
_08101354:
	ldr r0, _08101368 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_08101362:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101368: .4byte 0x03000FD8
