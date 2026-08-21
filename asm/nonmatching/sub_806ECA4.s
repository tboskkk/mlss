	.syntax unified
	.text

	thumb_func_start sub_806ECA4
sub_806ECA4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r6, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r6, r6, r0
	str r6, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r7, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r6, r0
	bgt _0806ED2C
	str r0, [r7, #0x10]
_0806ED2C:
	adds r1, r7, #0x0
	adds r1, #0x88
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	cmp r1, r0
	ble _0806ED44
	ldr r0, [r7, #0x14]
	cmp r0, r1
	blt _0806ED4C
	b _0806ED4A
_0806ED44:
	ldr r0, [r7, #0x14]
	cmp r0, r1
	bgt _0806ED4C
_0806ED4A:
	str r1, [r7, #0x14]
_0806ED4C:
	adds r4, r7, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806EDAC
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0806EDAC
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0806ED78
	adds r1, #0xFF
_0806ED78:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _0806ED82
	adds r2, #0xFF
_0806ED82:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _0806ED8C
	adds r3, #0xFF
_0806ED8C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0806EDB4 @ =0x00002049
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	movs r0, #0x00
	str r0, [r7, #0x18]
	movs r0, #0x20
	strh r0, [r4, #0x00]
	ldr r0, _0806EDB8 @ =0x08070A7D
	str r0, [r7, #0x4C]
_0806EDAC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806EDB4: .4byte 0x00002049
_0806EDB8: .4byte sub_8070A7C
