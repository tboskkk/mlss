	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	mov r8, r1
	adds r4, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F41A0 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F41A4
	subs r0, #0x01
	b _080F41A6
	.byte 0x00, 0x00
_080F41A0: .4byte 0x0000179C
_080F41A4:
	subs r0, #0x07
_080F41A6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0x0
	cmp r6, #0x07
	bhi _080F41C8
	ldr r0, _080F41C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x08
	b _080F41D8
	.byte 0x00, 0x00
_080F41C4: .4byte 0x03000FD8
_080F41C8:
	ldr r1, _080F4238 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r6
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r3, r0, r2
_080F41D8:
	adds r0, r3, #0x0
	adds r0, #0x90
	ldrh r1, [r0, #0x00]
	subs r0, #0x14
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	mov r4, sp
	adds r4, #0x06
	add r5, sp, #0x008
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	add r2, sp, #0x004
	adds r3, r4, #0x0
	bl sub_80F7920
	add r0, sp, #0x004
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	movs r0, #0x00
	ldsh r3, [r5, r0]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80F76FC
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_80F7644
	mov r2, r8
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F4238: .4byte 0x03000FDC
