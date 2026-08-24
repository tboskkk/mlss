	.syntax unified
	.text

	thumb_func_start sub_806F68C
sub_806F68C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	movs r7, #0xFF
	lsls r7, r7, #0x08
	adds r3, r0, #0x0
	ands r3, r7
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	movs r5, #0x00
	strh r0, [r1, #0x0C]
	ldr r6, _0806F700 @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F6B6
	adds r0, #0xFF
_0806F6B6:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F6CC
	adds r0, #0x3F
_0806F6CC:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r1, #0xE0
	lsls r1, r1, #0x04
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r2, #0x00]
	ands r0, r7
	cmp r0, r3
	bgt _0806F6FA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	str r5, [r4, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
_0806F6FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806F700: .4byte 0x08198504
