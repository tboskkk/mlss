	.syntax unified
	.text

	thumb_func_start sub_80F9D5C
sub_80F9D5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r12, r3
	ldr r1, [r5, #0x04]
	movs r0, #0xA8
	muls r1, r0
	ldr r0, [r4, #0x24]
	adds r0, r0, r1
	adds r6, r0, #0x0
	adds r6, #0xA8
	movs r7, #0x01
	ldr r0, [r5, #0x00]
	ands r0, r7
	cmp r0, #0x00
	beq _080F9D96
	mov r2, r8
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r7, #0x09
_080F9D96:
	ldr r0, [r5, #0x00]
	cmp r0, #0x07
	bhi _080F9E4C
	lsls r0, r0, #0x02
	ldr r1, _080F9DA8 @ =lbl_080F9DAC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F9DA8: .4byte lbl_080F9DAC
lbl_080F9DAC:
	.4byte _080F9DDC
	.4byte _080F9DDC
	.4byte _080F9E22
	.4byte _080F9E22
	.4byte _080F9DCC
	.4byte _080F9DCC
	.4byte _080F9E12
	.4byte _080F9E12
_080F9DCC:
	adds r0, r6, #0
	adds r0, #160 @ 0xa0
	ldrb r0, [r0, #0]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq.n _080F9DF4
_080F9DDC:
	adds r0, r4, #0
	adds r0, #28
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r3, [r5, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	bl sub_80EA5C8
	b.n _080F9E0A
_080F9DF4:
	adds r0, r4, #0
	adds r0, #28
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r3, [r5, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	bl sub_80EA584
_080F9E0A:
	ldr r0, [r5, #8]
	mov r1, r8
	str r0, [r1, #0]
	b.n _080F9E4C
_080F9E12:
	adds r0, r6, #0
	adds r0, #160 @ 0xa0
	ldrb r0, [r0, #0]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq.n _080F9E38
_080F9E22:
	adds r0, r4, #0
	adds r0, #28
	ldr r2, [r5, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_80EA5C8
	b.n _080F9E4C
_080F9E38:
	adds r0, r4, #0
	adds r0, #28
	ldr r2, [r5, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_80EA584
_080F9E4C:
	mov r0, r8
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x02
	movs r0, #0x01
	bics r0, r1
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
