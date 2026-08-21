	.syntax unified
	.text

	thumb_func_start sub_80F0938
sub_80F0938:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	beq _080F094E
	ldr r0, [r3, #0x14]
	bl sub_80290CC
	b _080F0954
_080F094E:
	ldr r0, [r3, #0x14]
	bl sub_8029070
_080F0954:
	movs r0, #0x00
	pop {r1}
	bx r1
	.byte 0x00, 0x00
