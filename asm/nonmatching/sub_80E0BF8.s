	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bne _080E0C40
_080E0C04:
	ldr r4, [r5, #0x0C]
	ldr r0, _080E0C78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r4, r3]
	movs r6, #0x12
	ldsh r2, [r5, r6]
	subs r1, r1, r2
	movs r3, #0x02
	ldsh r2, [r4, r3]
	movs r6, #0x14
	ldsh r3, [r5, r6]
	subs r2, r2, r3
	bl sub_8082D00
	ldrh r0, [r4, #0x00]
	strh r0, [r5, #0x12]
	ldrh r0, [r4, #0x02]
	strh r0, [r5, #0x14]
	ldrh r0, [r4, #0x04]
	strh r0, [r5, #0x10]
	adds r4, #0x06
	str r4, [r5, #0x0C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _080E0C04
_080E0C40:
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _080E0C7C
	ldr r4, _080E0C78 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	movs r6, #0x12
	ldsh r1, [r5, r6]
	negs r1, r1
	movs r3, #0x14
	ldsh r2, [r5, r3]
	negs r2, r2
	bl sub_8082D00
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
	movs r0, #0x00
	str r0, [r5, #0x04]
	b _080E0C80
_080E0C78: .4byte 0x03000FD8
_080E0C7C:
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
_080E0C80:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
