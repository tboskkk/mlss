	.syntax unified
	.text

	thumb_func_start sub_80F0618
sub_80F0618:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	adds r7, r3, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080F0636
	ldr r0, [r4, #0x08]
	asrs r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	asrs r0, r0, #0x04
	str r0, [r4, #0x0C]
_080F0636:
	ldr r0, [r5, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x08
	ldsh r1, [r4, r2]
	movs r3, #0x0C
	ldsh r2, [r4, r3]
	bl get_coldef_ptr_by_xz
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r2, _080F0674 @ =0x03000FC0
	ldr r2, [r2, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r2, r2, r5
	movs r5, #0x00
	ldsh r3, [r4, r5]
	str r3, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F0674: .4byte 0x03000FC0
