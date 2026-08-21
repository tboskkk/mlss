	.syntax unified
	.text

	thumb_func_start sub_80F0914
sub_80F0914:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F0922
	cmp r2, #0x01
	beq _080F092A
	b _080F0930
_080F0922:
	ldr r0, [r0, #0x14]
	bl sub_8028F40
	b _080F0930
_080F092A:
	ldr r0, [r0, #0x14]
	bl sub_8028F2C
_080F0930:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
