	.syntax unified
	.text

	thumb_func_start sub_8072500
sub_8072500:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08072520 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0x08
	movs r1, #0x2F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072524 @ =0x08072551
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08072520: .4byte 0x03000FD8
_08072524: .4byte sub_8072550
