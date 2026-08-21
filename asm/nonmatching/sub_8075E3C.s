	.syntax unified
	.text

	thumb_func_start sub_8075E3C
sub_8075E3C:
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
	bgt _08075E7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075E5A
	adds r1, #0xFF
_08075E5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075E64
	adds r2, #0xFF
_08075E64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075E6E
	adds r3, #0xFF
_08075E6E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075E94 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075E7C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E8A
	ldr r0, _08075E98 @ =0x08074EED
	str r0, [r4, #0x4C]
_08075E8A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075E94: .4byte 0x000023CC
_08075E98: .4byte sub_8074EEC
