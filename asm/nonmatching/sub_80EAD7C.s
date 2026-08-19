	.syntax unified
	.text

	thumb_func_start sub_80EAD7C
sub_80EAD7C:
	ldr r3, _080EAD94 @ =0x03000D44
	ldr r0, [r3, #0x00]
	ldm r2!, {r1}
	adds r0, #0x26
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, #0x27
	strb r1, [r0, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080EAD94: .4byte 0x03000D44
