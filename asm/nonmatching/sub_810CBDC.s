	.syntax unified
	.text

	thumb_func_start sub_810CBDC
sub_810CBDC:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x08]
	ldr r0, [r0, #0x04]
	cmp r0, #0x00
	bne _0810CBEC
	str r0, [r1, #0x04]
	b _0810CBFC
_0810CBEC:
	ldr r1, _0810CC00 @ =0x0400001A
	ldr r0, _0810CC04 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _0810CC08 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_0810CBFC:
	pop {r0}
	bx r0
_0810CC00: .4byte 0x0400001A
_0810CC04: .4byte 0x0200001A
_0810CC08: .4byte 0x0200001E
