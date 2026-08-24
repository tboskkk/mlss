	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r6, _080FDA28 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	movs r7, #0xB0
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r3, r1, #0x1F
	movs r0, #0x01
	eors r0, r3
	lsls r0, r0, #0x02
	adds r2, #0x80
	adds r0, r2, r0
	ldr r3, [r0, #0x00]
	adds r4, r3, #0x0
	adds r4, #0x08
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r2, [r2, #0x00]
	movs r0, #0x08
	adds r0, r0, r2
	mov r8, r0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FD9B0
	adds r0, r2, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
_080FD9B0:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FDA1C
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x0C]
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	movs r5, #0x04
	adds r0, r5, #0x0
	ands r0, r1
	ldr r2, _080FDA2C @ =0x00002069
	cmp r0, #0x00
	beq _080FD9DA
	subs r2, #0x2F
_080FD9DA:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	ldr r2, _080FDA30 @ =0x0000203B
	cmp r0, #0x00
	beq _080FD9F6
	adds r2, #0x2F
_080FD9F6:
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x08]
	str r0, [r1, #0x04]
_080FDA1C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FDA28: .4byte 0x03000FD8
_080FDA2C: .4byte 0x00002069
_080FDA30: .4byte 0x0000203B
