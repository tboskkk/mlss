	.syntax unified
	.text

	thumb_func_start sub_806F2D8
sub_806F2D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r2, [r5, #0x08]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	movs r7, #0x00
	strh r0, [r2, #0x0C]
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r2, [r6, r3]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806F3DA
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0806F3DA
	str r7, [r5, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0806F3A0
	adds r1, #0xFF
_0806F3A0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0806F3AA
	adds r2, #0xFF
_0806F3AA:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0806F3B4
	adds r3, #0xFF
_0806F3B4:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806F3E8 @ =0x00002069
	bl sub_80DF024
	mov r1, r8
	strh r7, [r1, #0x00]
	ldr r0, [r5, #0x08]
	strh r7, [r0, #0x0C]
	ldr r2, _0806F3EC @ =0x000040E6
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x0E
	strh r0, [r6, #0x00]
	ldr r0, _0806F3F0 @ =0x0806F3F5
	str r0, [r5, #0x4C]
_0806F3DA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806F3E8: .4byte 0x00002069
_0806F3EC: .4byte 0x000040E6
_0806F3F0: .4byte sub_806F3F4
