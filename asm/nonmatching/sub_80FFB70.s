	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080FFBD8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	ldr r7, [r2, #0x34]
	movs r3, #0xD9
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	ldr r4, [r1, #0x08]
	adds r3, r0, #0x0
	cmp r7, #0x00
	beq _080FFBE4
	ldr r0, [r2, #0x40]
	ldr r5, _080FFBDC @ =0xFFFFFC00
	adds r0, r0, r5
	str r0, [r4, #0x04]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrb r0, [r4, #0x1B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1B]
	ldr r4, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldr r5, _080FFBE0 @ =0x000002BD
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FFBE4
	cmp r4, #0x00
	bne _080FFBC8
	b _080FFD16
_080FFBC8:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080FFBCC:
	str r0, [r4, #0x04]
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FFBCC
	b _080FFD16
	.byte 0x00, 0x00
_080FFBD8: .4byte 0x03000FD8
_080FFBDC: .4byte 0xFFFFFC00
_080FFBE0: .4byte 0x000002BD
_080FFBE4:
	ldr r3, [r3, #0x00]
	ldr r1, _080FFC6C @ =0x000002BD
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080FFCA4
	movs r5, #0x7F
	mov r12, r5
	mov r1, r12
	ands r1, r0
	mov r12, r1
	adds r5, r3, #0x0
	adds r5, #0x58
	movs r6, #0x08
	movs r3, #0x41
	negs r3, r3
	mov r8, r3
_080FFC06:
	ldr r3, [r5, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, r12
	bne _080FFC8E
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FFC8E
	adds r0, r3, #0x0
	adds r0, #0x08
	cmp r0, r7
	beq _080FFC8E
	movs r0, #0x06
	ands r0, r2
	cmp r0, #0x04
	bne _080FFC70
	adds r2, r3, #0x0
	adds r2, #0xE4
	ldr r0, [r2, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r2, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r2, #0x00]
	movs r1, #0x06
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrb r1, [r4, #0x1B]
	mov r0, r8
	ands r0, r1
	b _080FFC8A
_080FFC6C: .4byte 0x000002BD
_080FFC70:
	ldr r0, [r3, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r3, #0x44]
	str r0, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	ldrb r0, [r4, #0x1B]
	movs r1, #0x40
	orrs r0, r1
_080FFC8A:
	strb r0, [r4, #0x1B]
	ldr r4, [r4, #0x00]
_080FFC8E:
	adds r5, #0x04
	lsls r0, r6, #0x10
	ldr r3, _080FFCA0 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bne _080FFC06
	b _080FFD06
	.byte 0x00, 0x00
_080FFCA0: .4byte 0xFFFF0000
_080FFCA4:
	cmp r4, #0x00
	beq _080FFD16
	adds r2, r3, #0x0
	adds r2, #0x70
	ldr r1, [r3, #0x70]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, #0x03
	bne _080FFCCC
	movs r5, #0x88
	lsls r5, r5, #0x01
	adds r0, r1, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080FFCD0
_080FFCCC:
	adds r2, r3, #0x0
	adds r2, #0x74
_080FFCD0:
	ldr r2, [r2, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xE4
	ldr r0, [r3, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r3, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrb r0, [r4, #0x1B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1B]
	ldr r4, [r4, #0x00]
_080FFD06:
	cmp r4, #0x00
	beq _080FFD16
	movs r0, #0x80
	lsls r0, r0, #0x18
_080FFD0E:
	str r0, [r4, #0x04]
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FFD0E
_080FFD16:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
