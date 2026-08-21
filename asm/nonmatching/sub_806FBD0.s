	.syntax unified
	.text

	thumb_func_start sub_806FBD0
sub_806FBD0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806FC46
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806FC46
	adds r0, r4, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806FC10
	adds r1, #0xFF
_0806FC10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806FC1A
	adds r2, #0xFF
_0806FC1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806FC24
	adds r3, #0xFF
_0806FC24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806FC50 @ =0x0000200A
	bl sub_80DF024
	ldr r1, _0806FC54 @ =0x000017D2
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806FC58 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806FC5C @ =0x08070495
	str r0, [r4, #0x58]
	ldr r0, _0806FC60 @ =0x08070425
	str r0, [r4, #0x60]
	ldr r0, _0806FC64 @ =0x0806FC69
	str r0, [r4, #0x4C]
_0806FC46:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806FC50: .4byte 0x0000200A
_0806FC54: .4byte 0x000017D2
_0806FC58: .4byte 0x03000E3C
_0806FC5C: .4byte sub_8070494
_0806FC60: .4byte sub_8070424
_0806FC64: .4byte sub_806FC68
