	.syntax unified
	.text

	thumb_func_start sub_8150498
sub_8150498:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081504BC
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _081504E6
_081504BC:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081504E6
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081504EC @ =0x081506DD
	str r0, [r6, #0x00]
	ldr r0, _081504F0 @ =0x081506B5
	str r0, [r6, #0x0C]
_081504E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081504EC: .4byte sub_81506DC
_081504F0: .4byte sub_81506B4
