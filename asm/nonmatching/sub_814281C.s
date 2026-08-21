	.syntax unified
	.text

	thumb_func_start sub_814281C
sub_814281C:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0814286E
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142874 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08142878 @ =0x0813B361
	str r0, [r5, #0x0C]
	ldr r0, _0814287C @ =0x081428FD
	str r0, [r5, #0x04]
_0814286E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142874: .4byte sub_813B1E8
_08142878: .4byte sub_813B360
_0814287C: .4byte sub_81428FC
