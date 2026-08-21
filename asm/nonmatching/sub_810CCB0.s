	.syntax unified
	.text

	thumb_func_start sub_810CCB0
sub_810CCB0:
	push {lr}
	ldr r0, _0810CCC4 @ =0x0810B681
	movs r1, #0x86
	movs r2, #0x00
	bl sub_807D2D0
	movs r1, #0x00
	strh r1, [r0, #0x14]
	pop {r0}
	bx r0
_0810CCC4: .4byte sub_810B680
