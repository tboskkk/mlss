	.syntax unified
	.text

	thumb_func_start sub_81502A8
sub_81502A8:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	ldr r0, _08150324 @ =0x0000033E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r1, [r4, #0x00]
	ldr r0, _08150328 @ =0x0000020D
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8139AA0
	ldr r0, [r4, #0x00]
	bl sub_814FC88
	ldr r0, _0815032C @ =0x0000033D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08150330 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08150334 @ =0x0813B361
	str r0, [r1, #0x00]
	movs r0, #0xD2
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08150338 @ =0x0814F06D
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08150324: .4byte 0x0000033E
_08150328: .4byte 0x0000020D
_0815032C: .4byte 0x0000033D
_08150330: .4byte sub_813B380
_08150334: .4byte sub_813B360
_08150338: .4byte sub_814F06C
