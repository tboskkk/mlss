	.syntax unified
	.text

	thumb_func_start sub_8064B88
sub_8064B88:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r2, r3, #0x0
	adds r2, #0x9C
	ldr r0, [r3, #0x10]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r2, #0x00]
	subs r0, #0x11
	str r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xA0
	ldr r0, [r3, #0x14]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08064BF6
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08064BD2
	adds r0, #0xFF
_08064BD2:
	asrs r0, r0, #0x08
	adds r2, r3, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08064BEA
	adds r0, #0xFF
_08064BEA:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _08064BFC @ =0x08064C01
	str r0, [r3, #0x4C]
_08064BF6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064BFC: .4byte sub_8064C00
