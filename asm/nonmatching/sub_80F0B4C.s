	.syntax unified
	.text

	thumb_func_start sub_80F0B4C
sub_80F0B4C:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, _080F0B68 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	ldr r1, _080F0B6C @ =0x0000055E
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _080F0B70 @ =0x0000603F
	ands r0, r1
	cmp r0, #0x00
	bne _080F0B74
	movs r0, #0x01
	b _080F0B7A
	.byte 0x00, 0x00
_080F0B68: .4byte 0x03000FD0
_080F0B6C: .4byte 0x0000055E
_080F0B70: .4byte 0x0000603F
_080F0B74:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080F0B7A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
