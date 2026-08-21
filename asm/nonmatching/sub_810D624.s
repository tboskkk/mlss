	.syntax unified
	.text

	thumb_func_start sub_810D624
sub_810D624:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x14]
	adds r0, #0x03
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _0810D660
	movs r0, #0x18
	strh r0, [r5, #0x14]
	ldr r4, _0810D680 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_8085260
	ldr r0, _0810D684 @ =0x0810D70D
	str r0, [r5, #0x0C]
_0810D660:
	ldr r2, _0810D688 @ =0x0400001A
	ldr r0, _0810D68C @ =0x0200001A
	ldrh r0, [r0, #0x00]
	ldrh r1, [r5, #0x14]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _0810D690 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	ldrh r1, [r5, #0x14]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D680: .4byte 0x03000FD8
_0810D684: .4byte sub_810D70C
_0810D688: .4byte 0x0400001A
_0810D68C: .4byte 0x0200001A
_0810D690: .4byte 0x0200001E
