	.syntax unified
	.text

	thumb_func_start sub_81427E0
sub_81427E0:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08142810 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08142814 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08142818 @ =0x08141509
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08142810: .4byte 0x0000033E
_08142814: .4byte sub_813B380
_08142818: .4byte sub_8141508
