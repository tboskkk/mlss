	.syntax unified
	.text

	thumb_func_start sub_80F1A1C
sub_80F1A1C:
	push {lr}
	adds r0, r1, #0x0
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	beq _080F1A2C
	cmp r3, #0x01
	beq _080F1A32
	b _080F1A36
_080F1A2C:
	bl sub_805113C
	b _080F1A36
_080F1A32:
	bl sub_8050FD0
_080F1A36:
	movs r0, #0x01
	pop {r1}
	bx r1
