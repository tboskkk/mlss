	.syntax unified
	.text

	thumb_func_start sub_814B4C8
sub_814B4C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	adds r2, r5, #0x0
	bl sub_814B440
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814AD24
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814B038
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
