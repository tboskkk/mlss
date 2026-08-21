	.syntax unified
	.text

	thumb_func_start sub_809CA9C
sub_809CA9C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x75
	ldrb r0, [r1, #0x00]
	adds r0, #0x05
	movs r5, #0x00
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_809C59C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
