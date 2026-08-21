	.syntax unified
	.text

	thumb_func_start sub_80F7FC8
sub_80F7FC8:
	ldr r0, _080F8004 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	mov r1, r12
	adds r1, #0xD8
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	bx lr
_080F8004: .4byte 0x03000FD8
