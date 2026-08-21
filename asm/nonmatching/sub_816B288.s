	.syntax unified
	.text

	thumb_func_start sub_816B288
sub_816B288:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r2, r4, #0x0
	adds r2, #0x6C
	movs r0, #0x02
	negs r0, r0
	ldrh r1, [r2, #0x00]
	ands r0, r1
	movs r6, #0x00
	strh r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4C
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x80
	movs r0, #0x78
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x10]
	str r6, [sp, #0x000]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x7C]
	negs r1, r2
	ldr r0, [r4, #0x78]
	asrs r0, r0, #0x03
	muls r0, r1
	str r0, [r5, #0x70]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #0x03
	muls r0, r2
	str r0, [r5, #0x78]
	movs r0, #0x03
	str r0, [r5, #0x6C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
