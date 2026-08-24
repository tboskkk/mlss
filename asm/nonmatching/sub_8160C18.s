	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	bl get_surface_height_at_x
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl get_surface_height_at_x
	adds r1, r0, #0x0
	mov r0, r8
	subs r5, r5, r0
	lsls r5, r5, #0x08
	asrs r5, r5, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
