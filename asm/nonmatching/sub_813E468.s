	.syntax unified
	.text

	thumb_func_start sub_813E468
sub_813E468:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x01
	adds r0, r6, r3
	ldr r5, [r0, #0x00]
	ldr r0, _0813E4D4 @ =0x0000033E
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_8139AA0
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r0, r6, r3
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r4, #0x23
	ldrb r1, [r4, #0x00]
	adds r3, #0x04
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	strh r2, [r0, #0x00]
	ldrh r0, [r5, #0x0A]
	cmp r0, #0x01
	bne _0813E4E0
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r6, r3
	ldr r0, _0813E4D8 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _0813E4DC @ =0x08142B89
	b _0813E4F2
	.byte 0x00, 0x00
_0813E4D4: .4byte 0x0000033E
_0813E4D8: .4byte sub_813B380
_0813E4DC: .4byte sub_8142B88
_0813E4E0:
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r6, r3
	ldr r0, _0813E4FC @ =0x0813E505
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _0813E500 @ =0x0813E619
_0813E4F2:
	str r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E4FC: .4byte sub_813E504
_0813E500: .4byte sub_813E618
