	.syntax unified
	.text

	thumb_func_start sub_813C3C8
sub_813C3C8:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813C414 @ =0x0813C485
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813C418 @ =0x08139421
	str r0, [r1, #0x00]
	movs r0, #0xD2
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813C41C @ =0x0813BF95
	str r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0813C414: .4byte sub_813C484
_0813C418: .4byte sub_8139420
_0813C41C: .4byte sub_813BF94
