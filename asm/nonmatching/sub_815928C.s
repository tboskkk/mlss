	.syntax unified
	.text

	thumb_func_start sub_815928C
sub_815928C:
	push {r4, lr}
	ldr r0, _081592D8 @ =0x04000006
	ldrh r2, [r0, #0x00]
	ldr r1, _081592DC @ =0x04000018
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x80
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x26
	ldr r0, _081592E0 @ =0x03001014
	ldr r3, [r0, #0x00]
	lsls r2, r2, #0x01
	adds r0, r3, #0x4
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, _081592E4 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r1, _081592E8 @ =0x00001CC4
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _081592D2
	movs r0, #0xA0
	lsls r0, r0, #0x13
	movs r4, #0xE6
	lsls r4, r4, #0x01
	adds r1, r3, r4
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
_081592D2:
	pop {r4}
	pop {r0}
	bx r0
_081592D8: .4byte 0x04000006
_081592DC: .4byte 0x04000018
_081592E0: .4byte 0x03001014
_081592E4: .4byte 0x03001018
_081592E8: .4byte 0x00001CC4
