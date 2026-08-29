	.syntax unified
	.text

	thumb_func_start sub_8134190
sub_8134190:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _081341A2
	adds r0, #0xFF
_081341A2:
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
	bgt _0813421A
	ldr r1, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _081341F0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081341CC
	adds r1, #0xFF
_081341CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081341D6
	adds r2, #0xFF
_081341D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081341E0
	adds r3, #0xFF
_081341E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081341EC @ =0x000027A9
	bl sub_80DF024
	b _08134216
_081341EC: .4byte 0x000027A9
_081341F0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081341F8
	adds r1, #0xFF
_081341F8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08134202
	adds r2, #0xFF
_08134202:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0813420C
	adds r3, #0xFF
_0813420C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0813428C @ =0x000027B2
	bl sub_80DF024
_08134216:
	movs r0, #0x08
	strh r0, [r6, #0x00]
_0813421A:
	ldr r0, _08134290 @ =0x08198584
	lsls r2, r5, #0x01
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0813422A
	adds r1, #0x3F
_0813422A:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xA8
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08134294 @ =0x08198504
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0813424A
	adds r0, #0x3F
_0813424A:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x05
	movs r1, #0xD8
	lsls r1, r1, #0x07
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
	bls _08134284
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	movs r0, #0xDB
	bl stop_sfx_80195A8
_08134284:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0813428C: .4byte 0x000027B2
_08134290: .4byte 0x08198584
_08134294: .4byte 0x08198504
