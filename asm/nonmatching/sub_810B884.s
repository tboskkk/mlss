	.syntax unified
	.text

	thumb_func_start sub_810B884
sub_810B884:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	ldrh r1, [r3, #0x14]
	subs r0, r1, #0x3
	strh r0, [r3, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0810B89A
	movs r0, #0x00
	str r0, [r3, #0x04]
	b _0810B8EC
_0810B89A:
	ldr r0, _0810B8F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r2, #0x16
	ldsh r0, [r0, r2]
	ldr r2, _0810B8F8 @ =0x0400001A
	adds r1, #0x03
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _0810B8FC @ =0x0200001E
	ldrh r0, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r6, _0810B900 @ =0x04000044
	ldr r4, _0810B904 @ =0x0200001A
	ldrh r2, [r4, #0x00]
	movs r0, #0x14
	ldsh r3, [r3, r0]
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
_0810B8EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810B8F4: .4byte 0x03000FD8
_0810B8F8: .4byte 0x0400001A
_0810B8FC: .4byte 0x0200001E
_0810B900: .4byte 0x04000044
_0810B904: .4byte 0x0200001A
