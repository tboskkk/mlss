	.syntax unified
	.text

	thumb_func_start sub_80F7770
sub_80F7770:
	push {r4, lr}
	ldr r4, _080F77A4 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	adds r0, #0xE8
	ldr r2, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_80F2524
	ldr r1, [r4, #0x00]
	ldr r0, _080F77A8 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F77A4: .4byte 0x03000FD8
_080F77A8: .4byte 0x000002BF
