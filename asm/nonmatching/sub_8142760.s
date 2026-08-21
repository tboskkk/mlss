	.syntax unified
	.text

	thumb_func_start sub_8142760
sub_8142760:
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
	bne _0814279A
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	adds r0, #0x4E
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081427A0 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _081427A4 @ =0x0813B361
	str r0, [r5, #0x0C]
	ldr r0, _081427A8 @ =0x08141509
	str r0, [r5, #0x04]
_0814279A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081427A0: .4byte sub_813B1E8
_081427A4: .4byte sub_813B360
_081427A8: .4byte sub_8141508
