	.syntax unified
	.text

	thumb_func_start sub_810B680
sub_810B680:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x14]
	adds r0, #0x03
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0810B698
	movs r0, #0x18
	strh r0, [r5, #0x14]
	b _0810B6DE
_0810B698:
	cmp r0, #0x18
	ble _0810B6DE
	movs r0, #0x20
	strh r0, [r5, #0x14]
	ldr r4, _0810B738 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810B6DA
	subs r2, #0x40
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldr r0, _0810B73C @ =0x0810CD99
	str r0, [r1, #0x04]
_0810B6DA:
	ldr r0, _0810B740 @ =0x0810CC8D
	str r0, [r5, #0x0C]
_0810B6DE:
	ldr r0, _0810B738 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r2, #0x16
	ldsh r1, [r0, r2]
	ldr r2, _0810B744 @ =0x0400001A
	ldrh r0, [r5, #0x14]
	adds r0, #0x06
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _0810B748 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	ldrh r1, [r5, #0x14]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r6, _0810B74C @ =0x04000044
	ldr r4, _0810B750 @ =0x0200001A
	ldrh r2, [r4, #0x00]
	movs r0, #0x14
	ldsh r3, [r5, r0]
	adds r5, r3, #0x0
	subs r5, #0x99
	subs r2, r2, r5
	ldrh r0, [r4, #0x00]
	subs r3, #0x8E
	subs r0, r0, r3
	lsls r0, r0, #0x08
	orrs r2, r0
	ldrh r1, [r4, #0x00]
	subs r1, r1, r5
	ldrh r0, [r4, #0x00]
	subs r0, r0, r3
	lsls r0, r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r6, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810B738: .4byte 0x03000FD8
_0810B73C: .4byte 0x0810CD99
_0810B740: .4byte 0x0810CC8D
_0810B744: .4byte 0x0400001A
_0810B748: .4byte 0x0200001E
_0810B74C: .4byte 0x04000044
_0810B750: .4byte 0x0200001A
