	.syntax unified
	.text

	thumb_func_start sub_810D70C
sub_810D70C:
	ldr r3, _0810D72C @ =0x0400001A
	ldr r1, _0810D730 @ =0x0200001A
	ldrh r1, [r1, #0x00]
	ldrh r2, [r0, #0x14]
	adds r1, r1, r2
	strh r1, [r3, #0x00]
	adds r3, #0x04
	ldr r1, _0810D734 @ =0x0200001E
	ldrh r1, [r1, #0x00]
	ldrh r2, [r0, #0x14]
	adds r1, r1, r2
	strh r1, [r3, #0x00]
	movs r1, #0x00
	str r1, [r0, #0x04]
	bx lr
	.byte 0x00, 0x00
_0810D72C: .4byte 0x0400001A
_0810D730: .4byte 0x0200001A
_0810D734: .4byte 0x0200001E
