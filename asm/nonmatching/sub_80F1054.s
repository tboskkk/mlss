	.syntax unified
	.text

	thumb_func_start sub_80F1054
sub_80F1054:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	ldr r0, [r3, #0x00]
	asrs r1, r0, #0x01
	movs r2, #0x01
	ands r1, r2
	adds r1, #0x01
	ldrh r4, [r3, #0x04]
	ands r0, r2
	movs r5, #0x01
	cmp r0, #0x00
	beq _080F1070
	subs r5, #0x02
_080F1070:
	ldrh r0, [r3, #0x08]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8047A5C
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
