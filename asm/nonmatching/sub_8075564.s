	.syntax unified
	.text

	thumb_func_start sub_8075564
sub_8075564:
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
	bgt _080755A4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075582
	adds r1, #0xFF
_08075582:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807558C
	adds r2, #0xFF
_0807558C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075596
	adds r3, #0xFF
_08075596:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080755FC @ =0x0000244B
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_080755A4:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080755F4
	movs r0, #0x58
	bl stop_sfx_80195A8
	ldr r0, _08075600 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080755D2
	adds r1, #0xFF
_080755D2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080755DC
	adds r2, #0xFF
_080755DC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080755E6
	adds r3, #0xFF
_080755E6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075604 @ =0x00002454
	bl sub_80DF024
	ldr r0, _08075608 @ =0x08075CF5
	str r0, [r4, #0x4C]
_080755F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080755FC: .4byte 0x0000244B
_08075600: .4byte 0x0000012B
_08075604: .4byte 0x00002454
_08075608: .4byte sub_8075CF4
