	.syntax unified
	.text

	thumb_func_start sub_80F1738
sub_80F1738:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	beq _080F177A
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x98
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r5, #0x04]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	b _080F1792
_080F177A:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r5, #0x04]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
_080F1792:
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r2, [r2, #0x00]
	ldrb r3, [r5, #0x10]
	ldrb r4, [r5, #0x0C]
	str r4, [sp, #0x000]
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
