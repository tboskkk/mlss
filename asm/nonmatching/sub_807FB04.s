	.syntax unified
	.text

	thumb_func_start sub_807FB04
sub_807FB04:
	push {r4, lr}
	ldr r0, _0807FB2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807FB30 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0807FB2C: .4byte 0x03000FD8
_0807FB30: .4byte 0x03001034
