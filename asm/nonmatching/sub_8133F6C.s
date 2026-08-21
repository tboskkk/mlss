	.syntax unified
	.text

	thumb_func_start sub_8133F6C
sub_8133F6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	mov r9, r2
	adds r0, r4, #0x0
	adds r0, #0xA8
	adds r1, #0x04
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	mov r8, r2
	adds r1, #0x24
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0813400A
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08133FDC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08133FB8
	adds r1, #0xFF
_08133FB8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08133FC2
	adds r2, #0xFF
_08133FC2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08133FCC
	adds r3, #0xFF
_08133FCC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08133FD8 @ =0x000027A9
	bl sub_80DF024
	b _08134002
_08133FD8: .4byte 0x000027A9
_08133FDC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08133FE4
	adds r1, #0xFF
_08133FE4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08133FEE
	adds r2, #0xFF
_08133FEE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08133FF8
	adds r3, #0xFF
_08133FF8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0813405C @ =0x000027B2
	bl sub_80DF024
_08134002:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_0813400A:
	adds r6, r4, #0x0
	adds r6, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x00]
	subs r5, r1, r0
	str r5, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xA4
	ldr r0, [r7, #0x00]
	subs r0, r5, r0
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0x0
	mov r1, r9
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0813403C
	adds r1, #0xFF
_0813403C:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08134060
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r6, #0x00]
	negs r0, r0
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	b _08134076
	.byte 0x00, 0x00
_0813405C: .4byte 0x000027B2
_08134060:
	ldr r0, [r7, #0x00]
	cmp r5, r0
	ble _08134076
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	movs r0, #0xDB
	bl stop_sfx_80195A8
_08134076:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
