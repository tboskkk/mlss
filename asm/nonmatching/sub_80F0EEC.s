	.syntax unified
	.text

	thumb_func_start sub_80F0EEC
sub_80F0EEC:
	push {lr}
	adds r2, r1, #0x0
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080F0EFE
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r2, [r0, #0x00]
_080F0EFE:
	ldr r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F0F1A
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x04
	str r0, [r3, #0x04]
	ldr r0, [r3, #0x08]
	lsls r0, r0, #0x04
	str r0, [r3, #0x08]
	ldr r0, [r3, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r3, #0x0C]
_080F0F1A:
	adds r0, r1, #0x0
	adds r3, #0x04
	cmp r0, #0x00
	blt _080F0F58
	cmp r0, #0x01
	bgt _080F0F40
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldm r3!, {r0}
	str r0, [r1, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldm r3!, {r0}
	str r0, [r1, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x02
	b _080F0F52
_080F0F40:
	cmp r1, #0x03
	bgt _080F0F58
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldm r3!, {r0}
	str r0, [r1, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x02
_080F0F52:
	adds r1, r2, r0
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
_080F0F58:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
