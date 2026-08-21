	.syntax unified
	.text

	thumb_func_start sub_80F82A8
sub_80F82A8:
	push {r4, r5, r6, lr}
	ldr r6, _080F82E4 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r5, [r2, #0x00]
	lsls r3, r5, #0x02
	adds r1, #0x58
	adds r3, r1, r3
	ldr r4, [r3, #0x00]
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	str r4, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0xF4
	strb r5, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [r2, #0x04]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xF4
	strb r2, [r0, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F82E4: .4byte 0x03000FD8
