	.syntax unified
	.text

	thumb_func_start sub_80FC148
sub_80FC148:
	push {lr}
	adds r0, r1, #0x0
	ldr r1, [r0, #0x00]
	adds r0, #0x0C
	ldr r2, _080FC160 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
_080FC160: .4byte 0x00007FFF
