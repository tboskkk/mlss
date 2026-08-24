	.syntax unified
	.text

	thumb_func_start sub_811152C
sub_811152C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_811160C
	adds r3, r4, #0x0
	adds r3, #0x98
	ldr r1, [r3, #0x00]
	ldr r0, _081115F8 @ =0x0000FFFF
	adds r2, r1, r0
	ldr r0, _081115FC @ =0x0001FFFE
	cmp r2, r0
	bls _08111584
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0811154E
	adds r0, r2, #0x0
_0811154E:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x01
	ble _0811156C
	ldr r0, _08111600 @ =0x081123B5
	str r0, [r4, #0x4C]
_0811156C:
	ldr r1, _08111604 @ =0x083BA994
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x01
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08111584
	bl stop_sfx_80195A8
_08111584:
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08111598
	ldr r0, _08111608 @ =0x0811230D
	bl sub_8112350
	movs r0, #0x01
	str r0, [r5, #0x00]
_08111598:
	adds r0, r4, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _081115EA
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081115B0
	adds r0, #0xFF
_081115B0:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	movs r6, #0x9A
	lsls r6, r6, #0x06
	cmp r0, #0x7F
	bgt _081115C0
	subs r6, #0x09
_081115C0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081115C8
	adds r1, #0xFF
_081115C8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081115D2
	adds r2, #0xFF
_081115D2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081115DC
	adds r3, #0xFF
_081115DC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x06
	strh r0, [r5, #0x00]
_081115EA:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081115F8: .4byte 0x0000FFFF
_081115FC: .4byte 0x0001FFFE
_08111600: .4byte sub_81123B4
_08111604: .4byte 0x083BA994
_08111608: .4byte sub_811230C
