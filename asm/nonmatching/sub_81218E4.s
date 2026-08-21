	.syntax unified
	.text

	thumb_func_start sub_81218E4
sub_81218E4:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x18
	movs r4, #0xAC
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x12
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
