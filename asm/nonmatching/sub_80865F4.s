	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [r4, #0x38]
	mov r10, r3
	add r1, r10
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r5, #0x00
	ldsh r0, [r0, r5]
	ldr r7, [r4, #0x3C]
	str r7, [sp, #0x000]
	adds r5, r7, r0
	str r5, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r3, [r4, #0x40]
	str r3, [sp, #0x004]
	adds r2, r3, r0
	str r2, [r4, #0x18]
	ldr r7, [r4, #0x28]
	mov r12, r7
	mov r0, r12
	adds r0, #0xD8
	ldr r6, [r0, #0x00]
	subs r1, r1, r6
	cmp r1, #0x00
	bge _08086640
	adds r1, #0x0F
_08086640:
	asrs r1, r1, #0x04
	mov r9, r1
	mov r0, r12
	adds r0, #0xDC
	str r0, [sp, #0x008]
	ldr r1, [r0, #0x00]
	subs r0, r5, r1
	cmp r0, #0x00
	bge _08086654
	adds r0, #0x0F
_08086654:
	asrs r0, r0, #0x04
	mov r8, r0
	movs r3, #0xE0
	add r12, r3
	mov r5, r12
	ldr r3, [r5, #0x00]
	subs r0, r2, r3
	cmp r0, #0x00
	bge _08086668
	adds r0, #0x0F
_08086668:
	asrs r0, r0, #0x04
	str r0, [sp, #0x00C]
	mov r7, r10
	subs r0, r7, r6
	cmp r0, #0x00
	bge _08086676
	adds r0, #0x0F
_08086676:
	asrs r5, r0, #0x04
	ldr r0, [sp, #0x000]
	subs r1, r0, r1
	cmp r1, #0x00
	bge _08086682
	adds r1, #0x0F
_08086682:
	asrs r1, r1, #0x04
	ldr r2, [sp, #0x004]
	subs r3, r2, r3
	cmp r3, #0x00
	bge _0808668E
	adds r3, #0x0F
_0808668E:
	asrs r3, r3, #0x04
	mov r7, r9
	mov r2, r9
	muls r2, r7
	mov r7, r8
	mov r0, r8
	muls r0, r7
	adds r2, r2, r0
	ldr r7, [sp, #0x00C]
	adds r0, r7, #0x0
	muls r0, r7
	adds r2, r2, r0
	adds r0, r5, #0x0
	muls r0, r5
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	cmp r2, r0
	blt _080866EE
	str r6, [r4, #0x10]
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x14]
	mov r1, r12
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r1, #0x00
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x4C]
	str r1, [r4, #0x50]
_080866EE:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
