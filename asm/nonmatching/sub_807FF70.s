	.syntax unified
	.text

	thumb_func_start sub_807FF70
sub_807FF70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FF94 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x3C]
	ldr r2, [r3, #0x48]
	str r2, [r0, #0x00]
	str r4, [r0, #0x04]
	movs r2, #0x00
	strh r2, [r0, #0x10]
	str r0, [r3, #0x48]
	str r1, [r0, #0x08]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FF94: .4byte 0x03000FD8
