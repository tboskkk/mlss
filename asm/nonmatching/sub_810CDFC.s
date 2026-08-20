	.syntax unified
	.text

	thumb_func_start sub_810CDFC
sub_810CDFC:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _0810CE18 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x12
	ldsh r0, [r1, r2]
	cmp r0, #0x3F
	bgt _0810CE1C
	movs r0, #0x08
	b _0810CE28
_0810CE18: .4byte 0x03000FD8
_0810CE1C:
	movs r4, #0x12
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _0810CE26
	adds r0, #0xFF
_0810CE26:
	asrs r0, r0, #0x08
_0810CE28:
	ldr r2, _0810CE70 @ =0x04000018
	subs r1, r0, #0x7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #0x16
	ldsh r0, [r3, r4]
	subs r0, #0x06
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	ldr r1, _0810CE74 @ =0x04000048
	ldr r0, _0810CE78 @ =0x3F3B3F3F
	str r0, [r1, #0x00]
	subs r1, #0x08
	ldr r0, _0810CE7C @ =0x7FF07FF0
	str r0, [r1, #0x00]
	ldr r4, _0810CE80 @ =0x04000044
	ldr r3, _0810CE84 @ =0x0200001A
	ldrh r2, [r3, #0x00]
	adds r2, #0x99
	ldrh r0, [r3, #0x00]
	adds r0, #0x8E
	lsls r0, r0, #0x08
	orrs r2, r0
	ldrh r1, [r3, #0x00]
	adds r1, #0x99
	ldrh r0, [r3, #0x00]
	adds r0, #0x8E
	lsls r0, r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0810CE70: .4byte 0x04000018
_0810CE74: .4byte 0x04000048
_0810CE78: .4byte 0x3F3B3F3F
_0810CE7C: .4byte 0x7FF07FF0
_0810CE80: .4byte 0x04000044
_0810CE84: .4byte 0x0200001A
