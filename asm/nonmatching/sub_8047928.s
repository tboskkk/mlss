	.syntax unified
	.text

	thumb_func_start sub_8047928
sub_8047928:
	push {lr}
	add sp, #-0x004
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r0}
	bx r0
	.byte 0x00, 0x00
