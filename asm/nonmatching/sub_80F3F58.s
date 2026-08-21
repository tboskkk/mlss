	.syntax unified
	.text

	thumb_func_start sub_80F3F58
sub_80F3F58:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r5, #0x2C]
	ldr r1, _080F3F70 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F3F74
	subs r0, #0x01
	b _080F3F76
_080F3F70: .4byte 0x0000179C
_080F3F74:
	subs r0, #0x07
_080F3F76:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r7, r1, #0x0
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080F3FB2
	ldr r0, [r4, #0x04]
	lsls r3, r0, #0x04
	str r3, [r4, #0x04]
	ldr r0, [r4, #0x08]
	lsls r2, r0, #0x04
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	movs r1, #0x01
	adds r0, r6, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F3FB2
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r4, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x08
	str r0, [r4, #0x08]
_080F3FB2:
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _080F3FCC
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80F7984
	b _080F3FDC
_080F3FCC:
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80F79F0
_080F3FDC:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
