	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080ACB0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r12, r1
	mov r3, r12
	adds r3, #0x08
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ACB04
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ACAA2
	cmp r1, #0x04
	bne _080ACAF4
_080ACAA2:
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _080ACAAA
	adds r0, #0xFF
_080ACAAA:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	adds r5, #0x0C
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080ACAC4
	adds r0, #0xFF
_080ACAC4:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080ACADA
	adds r3, #0xFF
_080ACADA:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080ACAF4:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080ACB10 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080ACB14 @ =0x080ACB19
	str r0, [r6, #0x4C]
_080ACB04:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080ACB0C: .4byte 0x03000FD8
_080ACB10: .4byte 0x00000FFF
_080ACB14: .4byte sub_80ACB18
