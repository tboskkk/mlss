	.syntax unified
	.text

	thumb_func_start sub_813489C
sub_813489C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8134560
	adds r0, r4, #0x0
	bl sub_813481C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_81345E8
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
