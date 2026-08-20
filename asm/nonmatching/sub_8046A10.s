	.syntax unified
	.text

	thumb_func_start sub_8046A10
sub_8046A10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08046A80 @ =0x000002B5
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08046A7A
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x01
	negs r3, r3
	str r3, [r0, #0x00]
	ldr r6, _08046A84 @ =0x00000213
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r4, r2
	str r3, [r0, #0x00]
	str r3, [r1, #0x00]
	adds r6, #0x2D
	adds r0, r4, r6
	ldrh r1, [r0, #0x00]
	subs r2, #0x12
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r6, #0x28
	adds r1, r4, r6
	ldrh r2, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, r3
	beq _08046A70
	ldr r3, _08046A88 @ =0x00000266
	adds r0, r4, r3
	strh r2, [r0, #0x00]
	ldr r0, _08046A8C @ =0x0000FFFF
	strh r0, [r1, #0x00]
_08046A70:
	ldrb r1, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_08046A7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08046A80: .4byte 0x000002B5
_08046A84: .4byte 0x00000213
_08046A88: .4byte 0x00000266
_08046A8C: .4byte 0x0000FFFF
