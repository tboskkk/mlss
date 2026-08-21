	.syntax unified
	.text

	thumb_func_start sub_81426A4
sub_81426A4:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _081426F8 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0x00
	strh r2, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xF4
	lsls r1, r1, #0x01
	adds r0, r4, r1
	str r2, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081426FC @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08142700 @ =0x08141D55
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081426F8: .4byte 0x0000033E
_081426FC: .4byte sub_813B380
_08142700: .4byte sub_8141D54
