	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA5A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AA5CA
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA510
	cmp r1, #0x04
	bne _080AA572
_080AA510:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AA518
	adds r1, #0xFF
_080AA518:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AA52E
	adds r0, #0xFF
_080AA52E:
	asrs r0, r0, #0x08
	adds r1, r2, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AA544
	adds r3, #0xFF
_080AA544:
	asrs r3, r3, #0x08
	subs r3, #0x1E
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AA55E
	adds r0, #0xFF
_080AA55E:
	asrs r0, r0, #0x08
	adds r0, #0x14
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080AA572:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA584
	cmp r1, #0x04
	bne _080AA5C4
_080AA584:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AA5A8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080AA5B4
_080AA5A4: .4byte 0x03000FD8
_080AA5A8:
	ldr r2, _080AA5D8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080AA5B4:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AA5C4:
	ldr r0, _080AA5DC @ =0x080AA5E1
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA5CA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA5D8: .4byte 0x0000204D
_080AA5DC: .4byte sub_80AA5E0
