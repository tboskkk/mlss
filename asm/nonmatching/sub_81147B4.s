	.syntax unified
	.text

	thumb_func_start sub_81147B4
sub_81147B4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_811458C
	ldr r0, [r4, #0x28]
	ldr r2, _081147CC @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_081147CC: .4byte 0x00000113
