	.syntax unified
	.text

	thumb_func_start sub_80E1780
sub_80E1780:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x00
	mov r8, r0
	str r0, [r4, #0x08]
	bl sub_8199F30
	adds r2, r0, #0x0
	movs r5, #0xFF
	ands r0, r5
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r7, #0x00
	ldsh r1, [r6, r7]
	muls r0, r1
	lsrs r0, r0, #0x08
	strh r0, [r4, #0x16]
	lsrs r2, r2, #0x08
	adds r0, r2, #0x0
	ands r0, r5
	adds r0, r0, r3
	movs r7, #0x02
	ldsh r1, [r6, r7]
	muls r0, r1
	lsrs r0, r0, #0x08
	strh r0, [r4, #0x12]
	lsrs r2, r2, #0x08
	adds r0, r2, #0x0
	ands r0, r5
	adds r0, r0, r3
	movs r3, #0x04
	ldsh r1, [r6, r3]
	muls r0, r1
	lsrs r0, r0, #0x08
	strh r0, [r4, #0x18]
	mov r7, r8
	strh r7, [r4, #0x10]
	lsrs r2, r2, #0x08
	strh r2, [r4, #0x14]
	movs r0, #0x01
	ands r0, r2
	adds r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
