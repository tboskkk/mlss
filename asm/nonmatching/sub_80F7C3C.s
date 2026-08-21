	.syntax unified
	.text

	thumb_func_start sub_80F7C3C
sub_80F7C3C:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F7C60
	cmp r2, #0x01
	bgt _080F7C4E
	cmp r2, #0x00
	beq _080F7C54
	b _080F7C70
_080F7C4E:
	cmp r2, #0x02
	beq _080F7C6C
	b _080F7C70
_080F7C54:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x00
	bl sub_807F6EC
	b _080F7C70
_080F7C60:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x01
	bl sub_807F6EC
	b _080F7C70
_080F7C6C:
	bl sub_807F6D0
_080F7C70:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
