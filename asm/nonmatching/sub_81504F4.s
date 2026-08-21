	.syntax unified
	.text

	thumb_func_start sub_81504F4
sub_81504F4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldr r0, _08150584 @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_814EDAC
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r2, #0x08
	adds r1, r4, r2
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	subs r2, #0x14
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08150588 @ =0x0813B381
	str r0, [r1, #0x00]
	subs r2, #0x30
	adds r1, r4, r2
	ldr r0, _0815058C @ =0x0814EADD
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150584: .4byte 0x0000033E
_08150588: .4byte sub_813B380
_0815058C: .4byte sub_814EADC
