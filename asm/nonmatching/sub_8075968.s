	.syntax unified
	.text

	thumb_func_start sub_8075968
sub_8075968:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080759BC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075998
	adds r1, #0xFF
_08075998:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080759A2
	adds r2, #0xFF
_080759A2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080759AC
	adds r3, #0xFF
_080759AC:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _080759E0 @ =0x00002490
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_080759BC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080759D8
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080759E4 @ =0x080759E9
	str r0, [r4, #0x4C]
_080759D8:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080759E0: .4byte 0x00002490
_080759E4: .4byte sub_80759E8
