	.syntax unified
	.text

	thumb_func_start sub_813967C
sub_813967C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_8137440
	adds r0, r4, #0x0
	bl sub_8137E50
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081396A4 @ =0x08139615
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081396A4: .4byte sub_8139614
