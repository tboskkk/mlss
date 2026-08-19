	.syntax unified
	.text

	thumb_func_start sub_8047784
sub_8047784:
	ldr r1, _080477A0 @ =0x0000020D
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _080477A4 @ =0x00000217
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_080477A0: .4byte 0x0000020D
_080477A4: .4byte 0x00000217
