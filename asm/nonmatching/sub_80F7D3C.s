	.syntax unified
	.text

	thumb_func_start sub_80F7D3C
sub_80F7D3C:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, [r0, #0x2C]
	ldr r1, _080F7D54 @ =0x0000179D
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x00
	bne _080F7D58
	movs r0, #0x01
	b _080F7D5E
_080F7D54: .4byte 0x0000179D
_080F7D58:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080F7D5E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
