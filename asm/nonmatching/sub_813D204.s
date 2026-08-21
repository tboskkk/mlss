	.syntax unified
	.text

	thumb_func_start sub_813D204
sub_813D204:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r2, #0x0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _0813D248
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r4, r2
	subs r2, #0x90
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldr r0, _0813D260 @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0813D248:
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0813D264
	adds r0, r4, #0x0
	bl sub_8138364
	b _0813D276
_0813D260: .4byte 0x0000020D
_0813D264:
	ldr r0, _0813D27C @ =0x0813D5B9
	str r0, [r5, #0x00]
	ldr r0, _0813D280 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0813D276:
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D27C: .4byte sub_813D5B8
_0813D280: .4byte 0x0000020E
