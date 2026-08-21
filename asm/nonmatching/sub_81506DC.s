	.syntax unified
	.text

	thumb_func_start sub_81506DC
sub_81506DC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081506FE
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _08150714
_081506FE:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08150714
	ldr r0, [r5, #0x0C]
	str r0, [r5, #0x00]
_08150714:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
