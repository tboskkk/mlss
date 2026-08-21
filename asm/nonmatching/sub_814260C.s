	.syntax unified
	.text

	thumb_func_start sub_814260C
sub_814260C:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142646
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	adds r0, #0x58
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814264C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08142650 @ =0x0813B361
	str r0, [r5, #0x0C]
	ldr r0, _08142654 @ =0x08141D55
	str r0, [r5, #0x04]
_08142646:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814264C: .4byte sub_813B1E8
_08142650: .4byte sub_813B360
_08142654: .4byte sub_8141D54
