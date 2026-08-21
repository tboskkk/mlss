	.syntax unified
	.text

	thumb_func_start sub_80752BC
sub_80752BC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _0807535C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	ldr r1, [r1, #0x74]
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080752F4
	adds r0, r1, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080752F4
	adds r4, r5, #0x0
	adds r4, #0x8C
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _080752F4
	adds r0, r5, #0x0
	bl sub_8074FB0
	movs r0, #0x3C
	str r0, [r4, #0x00]
_080752F4:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807532E
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807530C
	adds r1, #0xFF
_0807530C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08075316
	adds r2, #0xFF
_08075316:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08075320
	adds r3, #0xFF
_08075320:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08075360 @ =0x000023D5
	bl sub_80DF024
	movs r0, #0x10
	strh r0, [r4, #0x00]
_0807532E:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075352
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08075352
	ldr r0, _08075364 @ =0x00000157
	bl stop_sfx_80195A8
	ldr r0, _08075368 @ =0x08075D99
	str r0, [r5, #0x4C]
_08075352:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807535C: .4byte 0x03000FD8
_08075360: .4byte 0x000023D5
_08075364: .4byte 0x00000157
_08075368: .4byte sub_8075D98
