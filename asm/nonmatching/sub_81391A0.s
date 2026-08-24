	.syntax unified
	.text

	thumb_func_start sub_81391A0
sub_81391A0:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, _081391F8 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r3, r2, r0
	movs r4, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _081391BE
	adds r1, #0x7F
_081391BE:
	asrs r1, r1, #0x07
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r5, _081391FC @ =0x00000239
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _081391E6
	adds r0, #0x0F
_081391E6:
	asrs r0, r0, #0x04
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	ands r0, r4
	str r0, [r3, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081391F8: .4byte word_8198504 @ =0x08198504
_081391FC: .4byte 0x00000239
