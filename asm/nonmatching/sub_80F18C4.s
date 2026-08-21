	.syntax unified
	.text

	thumb_func_start sub_80F18C4
sub_80F18C4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080F1900
	ldr r0, _080F18FC @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	b _080F190A
_080F18FC: .4byte 0x00000215
_080F1900:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
_080F190A:
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	ldrb r3, [r5, #0x08]
	ldrb r1, [r5, #0x04]
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
