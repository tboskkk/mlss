	.syntax unified
	.text

	thumb_func_start sub_8144FF0
sub_8144FF0:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r4
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8047928
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _0814505C @ =0x08145061
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814505C: .4byte sub_8145060
