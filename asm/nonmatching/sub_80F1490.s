	.syntax unified
	.text

	thumb_func_start sub_80F1490
sub_80F1490:
	push {lr}
	adds r0, r1, #0x0
	ldr r3, [r3, #0x00]
	cmp r3, #0x01
	beq _080F14B2
	cmp r3, #0x01
	bgt _080F14A4
	cmp r3, #0x00
	beq _080F14AA
	b _080F14BC
_080F14A4:
	cmp r3, #0x02
	beq _080F14B8
	b _080F14BC
_080F14AA:
	movs r1, #0x01
	bl sub_8047D84
	b _080F14BC
_080F14B2:
	bl sub_8047D64
	b _080F14BC
_080F14B8:
	bl sub_8047D44
_080F14BC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
