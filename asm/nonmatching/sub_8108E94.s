	.syntax unified
	.text

	thumb_func_start sub_8108E94
sub_8108E94:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108EC0
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r4, r2
	str r0, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x00]
_08108EC0:
	pop {r4, r5}
	pop {r0}
	bx r0
