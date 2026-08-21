	.syntax unified
	.text

	thumb_func_start sub_8143314
sub_8143314:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	movs r1, #0x10
	bl sub_81387C8
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xCE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r1, _08143370 @ =0x08136D01
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r6, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	bl sub_8047154
	ldr r2, [r4, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08143370: .4byte sub_8136D00
