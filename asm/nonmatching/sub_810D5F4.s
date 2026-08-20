	.syntax unified
	.text

	thumb_func_start sub_810D5F4
sub_810D5F4:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x08]
	ldr r0, [r0, #0x04]
	cmp r0, #0x00
	bne _0810D602
	str r0, [r1, #0x04]
_0810D602:
	ldr r1, _0810D618 @ =0x0400001A
	ldr r0, _0810D61C @ =0x0200001A
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _0810D620 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D618: .4byte 0x0400001A
_0810D61C: .4byte 0x0200001A
_0810D620: .4byte 0x0200001E
