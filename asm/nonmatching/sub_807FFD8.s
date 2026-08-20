	.syntax unified
	.text

	thumb_func_start sub_807FFD8
sub_807FFD8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FFF8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x3C]
	ldr r2, [r4, #0x00]
	str r2, [r0, #0x00]
	str r1, [r0, #0x04]
	movs r1, #0x00
	strh r1, [r0, #0x10]
	str r0, [r4, #0x00]
	pop {r4}
	pop {r1}
	bx r1
_0807FFF8: .4byte 0x03000FD8
