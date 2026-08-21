	.syntax unified
	.text

	thumb_func_start sub_810CC0C
sub_810CC0C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrh r1, [r0, #0x14]
	movs r0, #0x19
	subs r0, r0, r1
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	ble _0810CC28
	movs r0, #0x00
	str r0, [r2, #0x04]
	b _0810CC3C
_0810CC28:
	ldr r1, _0810CC40 @ =0x0400001A
	ldr r0, _0810CC44 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	subs r0, #0x18
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _0810CC48 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	subs r0, #0x18
	strh r0, [r1, #0x00]
_0810CC3C:
	pop {r0}
	bx r0
_0810CC40: .4byte 0x0400001A
_0810CC44: .4byte 0x0200001A
_0810CC48: .4byte 0x0200001E
