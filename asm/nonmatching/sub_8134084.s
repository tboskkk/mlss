	.syntax unified
	.text

	thumb_func_start sub_8134084
sub_8134084:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08134096
	adds r0, #0xFF
_08134096:
	asrs r5, r0, #0x08
	movs r0, #0xFF
	ands r5, r0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r6, r1, #0x0
	cmp r0, #0x00
	bgt _0813410E
	ldr r1, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _081340E4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081340C0
	adds r1, #0xFF
_081340C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081340CA
	adds r2, #0xFF
_081340CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081340D4
	adds r3, #0xFF
_081340D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081340E0 @ =0x000027A9
	bl sub_80DF024
	b _0813410A
_081340E0: .4byte 0x000027A9
_081340E4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081340EC
	adds r1, #0xFF
_081340EC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081340F6
	adds r2, #0xFF
_081340F6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08134100
	adds r3, #0xFF
_08134100:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08134184 @ =0x000027B2
	bl sub_80DF024
_0813410A:
	movs r0, #0x08
	strh r0, [r6, #0x00]
_0813410E:
	ldr r0, _08134188 @ =0x08198584
	lsls r2, r5, #0x01
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0813411E
	adds r1, #0x3F
_0813411E:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0813418C @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08134140
	adds r0, #0x3F
_08134140:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r2, r4, #0x0
	adds r2, #0x98
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x0A
	cmp r0, r1
	bls _0813417C
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	movs r0, #0xDB
	bl stop_sfx_80195A8
_0813417C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08134184: .4byte 0x000027B2
_08134188: .4byte 0x08198584
_0813418C: .4byte 0x08198504
