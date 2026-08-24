	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	movs r0, #0x0C
	adds r0, r0, r7
	mov r8, r0
	ldr r4, _08135564 @ =0x08CDC480
	str r4, [r0, #0x10]
	bl sub_8136470
	adds r6, r7, #0x0
	adds r6, #0x20
	str r4, [r6, #0x10]
	adds r0, r6, #0x0
	bl sub_8136470
	adds r5, r7, #0x0
	adds r5, #0x34
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	bl sub_8136470
	adds r0, r7, #0x0
	adds r0, #0x48
	ldr r4, _08135568 @ =0x08CDC470
	str r4, [r0, #0x40]
	bl sub_8135F40
	adds r0, r7, #0x0
	adds r0, #0x8C
	str r4, [r0, #0x40]
	bl sub_8135F40
	movs r0, #0x00
	str r0, [r7, #0x00]
	str r0, [r7, #0x04]
	str r0, [r7, #0x08]
	str r0, [r7, #0x0C]
	mov r1, r8
	str r0, [r1, #0x04]
	str r0, [r1, #0x08]
	str r0, [r7, #0x20]
	str r0, [r6, #0x04]
	str r0, [r6, #0x08]
	str r0, [r7, #0x34]
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	adds r1, r7, #0x0
	adds r1, #0xD4
	str r0, [r1, #0x00]
	adds r1, #0x08
	str r0, [r1, #0x00]
	subs r1, #0x0C
	str r0, [r1, #0x00]
	adds r1, #0x08
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08135564: .4byte 0x08CDC480
_08135568: .4byte 0x08CDC470
