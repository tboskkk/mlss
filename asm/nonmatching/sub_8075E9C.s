	.syntax unified
	.text

	thumb_func_start sub_8075E9C
sub_8075E9C:
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
	bgt _08075EDC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075EBA
	adds r1, #0xFF
_08075EBA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075EC4
	adds r2, #0xFF
_08075EC4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075ECE
	adds r3, #0xFF
_08075ECE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075EF4 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075EDC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075EEA
	ldr r0, _08075EF8 @ =0x08074D1D
	str r0, [r4, #0x4C]
_08075EEA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075EF4: .4byte 0x000023CC
_08075EF8: .4byte sub_8074D1C
