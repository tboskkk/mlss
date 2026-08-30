	.syntax unified
	.text

	thumb_func_start sub_810CC4C
sub_810CC4C:
	push {lr}
	adds r3, r0, #0x0
	ldrh r0, [r3, #0x14]
	subs r2, r0, #0x3
	strh r2, [r3, #0x14]
	lsls r0, r2, #0x10
	cmp r0, #0x00
	bgt _0810CC62
	movs r0, #0x00
	str r0, [r3, #0x04]
	b _0810CC78
_0810CC62:
	ldr r1, _0810CC7C @ =0x0400001A
	ldr r0, _0810CC80 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r2, _0810CC84 @ =0x0400001E
	ldr r0, _0810CC88 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
_0810CC78:
	pop {r0}
	bx r0
_0810CC7C: .4byte 0x0400001A
_0810CC80: .4byte 0x0200001A
_0810CC84: .4byte 0x0400001E
_0810CC88: .4byte 0x0200001E
