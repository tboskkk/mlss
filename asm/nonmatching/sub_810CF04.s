	.syntax unified
	.text

	thumb_func_start sub_810CF04
sub_810CF04:
	push {r4, lr}
	ldr r4, _0810CF64 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810CF5C
	ldr r0, _0810CF68 @ =0x0810CEC1
	movs r1, #0x00
	bl sub_807FF48
	ldr r2, [r4, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	str r0, [r1, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810CF6C @ =0x0810CDFD
	ldr r2, _0810CF70 @ =0x0810AB35
	movs r1, #0x86
	bl sub_807D2D0
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x0C]
	ldr r1, _0810CF74 @ =0x0200001A
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x16]
	ldr r1, _0810CF78 @ =0x02000048
	ldr r3, _0810CF7C @ =0x00003F3F
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0810CF80 @ =0x00003F3B
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_0810CF5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810CF64: .4byte 0x03000FD8
_0810CF68: .4byte sub_810CEC0
_0810CF6C: .4byte sub_810CDFC
_0810CF70: .4byte sub_810AB34
_0810CF74: .4byte 0x0200001A
_0810CF78: .4byte 0x02000048
_0810CF7C: .4byte 0x00003F3F
_0810CF80: .4byte 0x00003F3B
