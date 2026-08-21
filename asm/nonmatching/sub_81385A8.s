	.syntax unified
	.text

	thumb_func_start sub_81385A8
sub_81385A8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	movs r6, #0x01
	negs r6, r6
	cmp r0, r6
	beq _08138604
	adds r0, #0x01
	str r0, [r5, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xDF
	lsls r3, r3, #0x01
	adds r2, r4, r3
	movs r7, #0x00
	ldsh r2, [r2, r7]
	movs r7, #0x95
	lsls r7, r7, #0x02
	adds r3, r4, r7
	ldr r3, [r3, #0x00]
	bl sub_8138F1C
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08138604
	movs r0, #0x00
	str r0, [r4, #0x18]
	str r6, [r5, #0x00]
	ldr r3, _0813860C @ =0x000002B5
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r2, #0x00]
_08138604:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813860C: .4byte 0x000002B5
