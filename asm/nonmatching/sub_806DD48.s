	.syntax unified
	.text

	thumb_func_start sub_806DD48
sub_806DD48:
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
	bgt _0806DD8A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DD66
	adds r1, #0xFF
_0806DD66:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DD70
	adds r2, #0xFF
_0806DD70:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DD7A
	adds r3, #0xFF
_0806DD7A:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE14 @ =0x00001FDC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806DD8A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x4C]
	ldr r0, _0806DE1C @ =0x0806E791
	cmp r1, r0
	bne _0806DDC0
	ldr r0, [r2, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0806DDC0:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806DDC8
	adds r1, #0xFF
_0806DDC8:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806DE0A
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	ldr r3, [r0, #0x30]
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _0806DDEE
	adds r2, #0xFF
_0806DDEE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _0806DDF8
	adds r3, #0xFF
_0806DDF8:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE20 @ =0x00001FCF
	movs r1, #0x00
	bl sub_80DF024
	ldr r0, _0806DE24 @ =0x0806DE29
	str r0, [r4, #0x4C]
_0806DE0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DE14: .4byte 0x00001FDC
_0806DE18: .4byte 0xFFFFFD00
_0806DE1C: .4byte nullsub_15
_0806DE20: .4byte 0x00001FCF
_0806DE24: .4byte sub_806DE28
