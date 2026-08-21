	.syntax unified
	.text

	thumb_func_start sub_81470B8
sub_81470B8:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081470E8
	adds r0, r5, #0x0
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081470F0 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _081470F4 @ =0x08146FAD
	str r0, [r6, #0x0C]
_081470E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081470F0: .4byte sub_813B1E8
_081470F4: .4byte sub_8146FAC
