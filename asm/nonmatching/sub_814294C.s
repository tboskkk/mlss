	.syntax unified
	.text

	thumb_func_start sub_814294C
sub_814294C:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	ldr r3, _081429B0 @ =0x0000033E
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8139AA0
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r4, #0x23
	ldrb r1, [r4, #0x00]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r2, [r0, #0x00]
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r0, _081429B4 @ =0x081410D1
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081429B8 @ =0x081428FD
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081429B0: .4byte 0x0000033E
_081429B4: .4byte sub_81410D0
_081429B8: .4byte sub_81428FC
