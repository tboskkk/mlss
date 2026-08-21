	.syntax unified
	.text

	thumb_func_start sub_8145A58
sub_8145A58:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x0F
	bl sub_81387C8
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldr r0, _08145AA8 @ =0x08144561
	str r0, [r3, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, _08145AAC @ =0x08136D01
	str r1, [r0, #0x00]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145AA8: .4byte sub_8144560
_08145AAC: .4byte sub_8136D00
