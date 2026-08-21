	.syntax unified
	.text

	thumb_func_start sub_807F6D0
sub_807F6D0:
	push {lr}
	ldr r0, _0807F6E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116610
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F6E8: .4byte 0x03000FD8
