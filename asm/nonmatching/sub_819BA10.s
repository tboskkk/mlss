	.syntax unified
	.text

	thumb_func_start sub_819BA10
sub_819BA10:
	push {lr}
	lsls r0, r0, #0x08
	ldr r3, _0819BA28 @ =0xFFFF8000
	adds r2, r3, #0x0
	orrs r0, r2
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_819B418
	pop {r1}
	bx r1
_0819BA28: .4byte 0xFFFF8000
