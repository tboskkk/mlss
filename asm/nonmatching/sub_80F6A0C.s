	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0x07
	bgt _080F6A38
	ldr r0, _080F6A34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F6A48
_080F6A34: .4byte 0x03000FD8
_080F6A38:
	ldr r1, _080F6ABC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F6A48:
	ldr r7, [r0, #0x08]
	cmp r7, #0x00
	beq _080F6AAA
	ldrb r4, [r7, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	ldrh r6, [r7, #0x0E]
	ldr r0, [r7, #0x5C]
	mov r8, r0
	ldr r1, [r7, #0x60]
	mov r9, r1
	movs r0, #0x29
	adds r0, r0, r7
	mov r10, r0
	ldrb r5, [r0, #0x00]
	lsls r5, r5, #0x1E
	lsrs r5, r5, #0x1F
	adds r0, r7, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_801E150
	lsls r4, r4, #0x06
	ldrb r1, [r7, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r7, #0x11]
	strh r6, [r7, #0x0E]
	mov r1, r8
	str r1, [r7, #0x5C]
	mov r0, r9
	str r0, [r7, #0x60]
	lsls r5, r5, #0x01
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	mov r1, r10
	strb r0, [r1, #0x00]
_080F6AAA:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F6ABC: .4byte 0x03000FDC
