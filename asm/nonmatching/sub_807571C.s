	.syntax unified
	.text

	thumb_func_start sub_807571C
sub_807571C:
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
	bgt _0807575C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807573A
	adds r1, #0xFF
_0807573A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075744
	adds r2, #0xFF
_08075744:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807574E
	adds r3, #0xFF
_0807574E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080757B0 @ =0x00002487
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_0807575C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080757A6
	ldr r0, _080757B4 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075784
	adds r1, #0xFF
_08075784:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807578E
	adds r2, #0xFF
_0807578E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075798
	adds r3, #0xFF
_08075798:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080757B8 @ =0x00002462
	bl sub_80DF024
	ldr r0, _080757BC @ =0x08075C65
	str r0, [r4, #0x4C]
_080757A6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080757B0: .4byte 0x00002487
_080757B4: .4byte 0x0000012B
_080757B8: .4byte 0x00002462
_080757BC: .4byte sub_8075C64
