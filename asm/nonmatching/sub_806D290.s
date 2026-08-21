	.syntax unified
	.text

	thumb_func_start sub_806D290
sub_806D290:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D2D0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D2AE
	adds r1, #0xFF
_0806D2AE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D2B8
	adds r2, #0xFF
_0806D2B8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D2C2
	adds r3, #0xFF
_0806D2C2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D2F0 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D2D0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D300
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806D2F4
	adds r0, r4, #0x0
	bl sub_806CFBC
	b _0806D300
_0806D2F0: .4byte 0x0000212B
_0806D2F4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x2D
	strh r1, [r0, #0x00]
	ldr r0, _0806D308 @ =0x0806D35D
	str r0, [r4, #0x4C]
_0806D300:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D308: .4byte sub_806D35C
