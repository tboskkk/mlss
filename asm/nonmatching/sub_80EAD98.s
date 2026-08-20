	.syntax unified
	.text

	thumb_func_start sub_80EAD98
sub_80EAD98:
	push {lr}
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080EADB0
	ldr r0, _080EADAC @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x29
	movs r1, #0x01
	b _080EADB8
	.byte 0x00, 0x00
_080EADAC: .4byte 0x03000D44
_080EADB0:
	ldr r0, _080EADC0 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x29
	movs r1, #0xFF
_080EADB8:
	strb r1, [r0, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
_080EADC0: .4byte 0x03000D44
