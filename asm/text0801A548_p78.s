	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80400B0
sub_80400B0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r3, #0x0
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _080400D8
	ldr r2, _080400D4 @ =0x00000266
	adds r0, r5, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	str r0, [r1, #0x00]
	b _080400DA
	.byte 0x00, 0x00
_080400D4: .4byte 0x00000266
_080400D8:
	str r2, [r1, #0x00]
_080400DA:
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _080400F8
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r1, r5, r3
	adds r3, #0x0C
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	b _08040120
_080400F8:
	cmp r4, #0x00
	bne _0804010E
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r0, r5, r2
	str r4, [r0, #0x00]
	str r4, [r1, #0x00]
	b _08040178
_0804010E:
	cmp r4, #0x1E
	bne _0804012C
	movs r3, #0x95
	lsls r3, r3, #0x02
	adds r2, r5, r3
	movs r0, #0x96
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08040128 @ =0x0000052C
_08040120:
	str r0, [r1, #0x00]
	str r0, [r2, #0x00]
	b _08040178
	.byte 0x00, 0x00
_08040128: .4byte 0x0000052C
_0804012C:
	lsls r4, r4, #0x08
	movs r6, #0x00
	movs r1, #0x00
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
_0804013A:
	adds r6, r6, r0
	adds r1, r1, r6
	cmp r1, r4
	blt _0804013A
	subs r1, r1, r4
	cmp r1, #0x00
	ble _08040168
	lsls r1, r1, #0x08
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08040164
	adds r0, #0xFF
_08040164:
	asrs r0, r0, #0x08
	subs r6, r6, r0
_08040168:
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r6, [r0, #0x00]
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r0, r5, r2
	str r6, [r0, #0x00]
_08040178:
	movs r3, #0x00
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	ble _08040188
	movs r3, #0x01
_08040188:
	ldr r0, _080401DC @ =0x00000213
	adds r2, r5, r0
	lsls r3, r3, #0x05
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0x94
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	ldr r1, _080401E0 @ =0x0000023E
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	subs r3, #0x0C
	adds r0, r5, r3
	strh r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	bne _080401E8
	ldr r1, _080401E4 @ =0x00000262
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	b _080401EA
	.byte 0x00, 0x00
_080401DC: .4byte 0x00000213
_080401E0: .4byte 0x0000023E
_080401E4: .4byte 0x00000262
_080401E8:
	strh r7, [r2, #0x00]
_080401EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
