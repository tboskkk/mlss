	.syntax unified
	.text

	thumb_func_start sub_807F6EC
sub_807F6EC:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _0807F704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_81165CC
	pop {r0}
	bx r0
_0807F704: .4byte 0x03000FD8
