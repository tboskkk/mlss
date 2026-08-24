	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r6, _080FDAE8 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r2, r1, #0x1F
	movs r0, #0x01
	eors r0, r2
	lsls r0, r0, #0x02
	adds r2, r3, #0x0
	adds r2, #0x80
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	mov r8, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldrb r1, [r3, #0x0C]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x0C]
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r7, #0x04
	adds r0, r7, #0x0
	ands r0, r1
	ldr r2, _080FDAEC @ =0x00002068
	cmp r0, #0x00
	beq _080FDA88
	subs r2, #0x2F
_080FDA88:
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	ldr r2, _080FDAF0 @ =0x00002039
	cmp r0, #0x00
	beq _080FDAA4
	adds r2, #0x2F
_080FDAA4:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r4, [r0, #0x08]
	ldr r3, [r5, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r3, #0x12]
	ldrb r0, [r4, #0x12]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x12]
	ldr r0, [r5, #0x10]
	ldr r1, _080FDAF4 @ =0xFFFFEA00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, _080FDAF8 @ =0x080FDAFD
	mov r1, r9
	str r0, [r1, #0x04]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FDAE8: .4byte 0x03000FD8
_080FDAEC: .4byte 0x00002068
_080FDAF0: .4byte 0x00002039
_080FDAF4: .4byte 0xFFFFEA00
_080FDAF8: .4byte sub_80FDAFC
