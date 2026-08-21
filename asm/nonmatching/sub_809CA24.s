	.syntax unified
	.text

	thumb_func_start sub_809CA24
sub_809CA24:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_809C59C
	movs r5, #0x01
	negs r5, r5
	adds r0, r4, #0x0
	movs r1, #0x04
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	bl sub_80835E0
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r0, _0809CA68 @ =0x0809CAC9
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809CA68: .4byte sub_809CAC8
