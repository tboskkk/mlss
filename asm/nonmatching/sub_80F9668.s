	.syntax unified
	.text

	thumb_func_start sub_80F9668
sub_80F9668:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r3, r1, #0x0
	ldr r1, [r3, #0x00]
	ldr r0, [r3, #0x04]
	cmp r1, r0
	beq _080F967A
	movs r0, #0x00
	b _080F970E
_080F967A:
	adds r5, r3, #0x0
	adds r5, #0xA0
	ldrh r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080F96A8
	adds r0, r3, #0x0
	adds r0, #0xA4
	ldrb r1, [r0, #0x00]
	movs r0, #0xA8
	muls r0, r1
	ldr r1, [r6, #0x24]
	adds r1, r1, r0
	adds r1, #0xA0
	ldrh r2, [r1, #0x00]
	ldr r0, _080F96E8 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	ldr r0, _080F96EC @ =0x0000FFF7
	ands r0, r1
	strh r0, [r5, #0x00]
_080F96A8:
	ldrh r4, [r5, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r4, r0
	cmp r4, #0x00
	bne _080F96F2
	ldr r0, [r3, #0x08]
	cmp r0, #0x00
	beq _080F96F0
	str r0, [r3, #0x00]
	ldr r0, [r3, #0x0C]
	str r0, [r3, #0x04]
	adds r6, r3, #0x0
	adds r6, #0xA2
	ldrh r0, [r6, #0x00]
	movs r2, #0x00
	strh r0, [r5, #0x00]
	movs r0, #0xA5
	adds r0, r0, r3
	mov r12, r0
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xA4
	strb r1, [r0, #0x00]
	str r4, [r3, #0x0C]
	str r4, [r3, #0x08]
	strh r4, [r6, #0x00]
	mov r0, r12
	strb r2, [r0, #0x00]
	movs r0, #0x00
	b _080F970E
	.byte 0x00, 0x00
_080F96E8: .4byte 0x0000FFFB
_080F96EC: .4byte 0x0000FFF7
_080F96F0:
	strh r0, [r5, #0x00]
_080F96F2:
	ldr r1, [r6, #0x24]
	movs r2, #0x9A
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080F970C
	ldr r0, _080F9714 @ =0x000009A1
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _080F970C
	strb r2, [r1, #0x00]
_080F970C:
	movs r0, #0x01
_080F970E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F9714: .4byte 0x000009A1
