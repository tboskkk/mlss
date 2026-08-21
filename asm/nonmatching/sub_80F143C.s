	.syntax unified
	.text

	thumb_func_start sub_80F143C
sub_80F143C:
	push {lr}
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F1466
	cmp r2, #0x01
	bgt _080F1458
	cmp r2, #0x00
	beq _080F145E
	b _080F1470
_080F1458:
	cmp r2, #0x02
	beq _080F146C
	b _080F1470
_080F145E:
	movs r1, #0x01
	bl sub_8047D84
	b _080F1470
_080F1466:
	bl sub_8047D64
	b _080F1470
_080F146C:
	bl sub_8047D44
_080F1470:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
