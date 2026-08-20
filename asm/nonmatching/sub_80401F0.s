	.syntax unified
	.text

	thumb_func_start sub_80401F0
sub_80401F0:
	push {r4, lr}
	mov r12, r0
	adds r4, r1, #0x0
	movs r1, #0x92
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _08040214
	ldr r0, _08040210 @ =0x00000266
	add r0, r12
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	b _08040216
_08040210: .4byte 0x00000266
_08040214:
	str r2, [r1, #0x00]
_08040216:
	movs r2, #0x95
	lsls r2, r2, #0x02
	add r2, r12
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08040232
	movs r0, #0x99
	lsls r0, r0, #0x02
	add r0, r12
	movs r4, #0x00
	ldsh r0, [r0, r4]
	str r0, [r2, #0x00]
	b _08040234
_08040232:
	str r4, [r2, #0x00]
_08040234:
	movs r1, #0x96
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x95
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	add r2, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	add r1, r12
	mov r2, r12
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	ldr r2, _0804028C @ =0x0000023E
	add r2, r12
	ldrh r1, [r2, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _08040294
	ldr r0, _08040290 @ =0x00000262
	add r0, r12
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	b _08040296
	.byte 0x00, 0x00
_0804028C: .4byte 0x0000023E
_08040290: .4byte 0x00000262
_08040294:
	strh r3, [r2, #0x00]
_08040296:
	movs r3, #0x00
	movs r0, #0x96
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	ble _080402A6
	movs r3, #0x01
_080402A6:
	ldr r2, _080402C0 @ =0x00000213
	add r2, r12
	lsls r3, r3, #0x05
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080402C0: .4byte 0x00000213
