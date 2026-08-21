	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8031234
sub_8031234:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, _08031348 @ =0x00000246
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r5, r6, r2
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _0803127E
	adds r0, #0xFF
_0803127E:
	asrs r0, r0, #0x08
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	bge _08031292
	adds r1, #0xFF
_08031292:
	asrs r1, r1, #0x08
	ldr r2, _0803134C @ =0x0000024A
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r2, [r5, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r7, r6, r3
	ldr r1, [r7, #0x00]
	movs r0, #0x2E
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r7, #0x00]
	ldr r4, _08031350 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r7, #0x00]
	adds r4, #0x07
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	mov r12, r0
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x14]
	mov r2, r12
	ldr r0, [r2, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080312EE
	adds r1, #0xFF
_080312EE:
	asrs r1, r1, #0x08
	adds r1, #0x20
	mov r9, r1
	adds r4, r6, #0x0
	adds r4, #0xFB
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r8, r1
	mov r0, r12
	mov r1, r9
	mov r3, r8
	bl sub_80400B0
	ldr r2, [r5, #0x00]
	ldr r0, [r7, #0x00]
	ldr r3, [r0, #0x0C]
	adds r5, r4, #0x0
	cmp r3, #0x00
	bge _08031326
	adds r3, #0xFF
_08031326:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08031330
	adds r0, #0xFF
_08031330:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08031354
	movs r0, #0x10
	b _08031356
	.byte 0x00, 0x00
_08031348: .4byte 0x00000246
_0803134C: .4byte 0x0000024A
_08031350: .4byte 0x00000351
_08031354:
	movs r0, #0x0A
_08031356:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	adds r1, #0x94
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	ldrb r1, [r5, #0x00]
	lsrs r1, r1, #0x03
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _080313B8 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	adds r3, #0x20
	strb r1, [r3, #0x00]
	adds r4, r4, r0
	strb r1, [r4, #0x00]
	ldr r3, _080313BC @ =0x0000020B
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080313B8: .4byte 0x00000239
_080313BC: .4byte 0x0000020B
	thumb_func_start sub_80313C0
sub_80313C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r6, r7, r1
	ldr r1, [r6, #0x00]
	ldr r2, _080314FC @ =0x00000212
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r4, #0x40
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r1, [r5, #0x00]
	movs r0, #0x37
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldr r3, _08031500 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r4, _08031504 @ =0x0000020D
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _08031508 @ =0x0000035A
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, _0803150C @ =0x0000103F
	bl sub_8049000
	ldr r0, [r6, #0x00]
	movs r2, #0xFB
	adds r2, r2, r7
	mov r8, r2
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r2, #0xEE
	asrs r2, r1
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r4, #0x00
	ldsh r3, [r1, r4]
	movs r1, #0x10
	bl sub_80400B0
	ldr r4, [r5, #0x00]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r2, [r6, #0x00]
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	mov r3, r8
	ldrb r1, [r3, #0x00]
	lsrs r1, r1, #0x03
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08031510 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	mov r3, r12
	adds r3, #0x20
	strb r1, [r3, #0x00]
	adds r4, r4, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r4, _08031514 @ =0x0000020B
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080314FC: .4byte 0x00000212
_08031500: .4byte 0x00000351
_08031504: .4byte 0x0000020D
_08031508: .4byte 0x0000035A
_0803150C: .4byte 0x0000103F
_08031510: .4byte 0x00000239
_08031514: .4byte 0x0000020B
	thumb_func_start sub_8031518
sub_8031518:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r1, r1, r5
	mov r9, r1
	ldr r2, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r1, [r6, #0x00]
	movs r0, #0x3A
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	mov r1, r9
	ldr r2, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r4, _08031638 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	ldr r1, [r6, #0x00]
	adds r4, #0x07
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	mov r10, r0
	add r1, r10
	ldrb r2, [r1, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	movs r2, #0x04
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r1, _0803163C @ =0x00001041
	bl sub_8049000
	ldr r0, [r6, #0x00]
	add r0, r10
	ldrb r1, [r0, #0x00]
	ands r4, r1
	mov r2, r8
	orrs r4, r2
	strb r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, _08031640 @ =0x00001030
	bl sub_8049000
	ldr r4, [r6, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r3, [r1, #0x00]
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xFB
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08031644 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	adds r3, #0x20
	strb r1, [r3, #0x00]
	adds r4, r4, r0
	strb r1, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ldr r2, [r6, #0x00]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_804E0D8
	ldr r2, _08031648 @ =0x0000026E
	adds r1, r5, r2
	movs r0, #0x46
	strh r0, [r1, #0x00]
	ldr r0, _0803164C @ =0x0000020B
	adds r5, r5, r0
	ldrb r0, [r5, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x56
	bl play_sfx_80195B4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08031638: .4byte 0x00000351
_0803163C: .4byte 0x00001041
_08031640: .4byte 0x00001030
_08031644: .4byte 0x00000239
_08031648: .4byte 0x0000026E
_0803164C: .4byte 0x0000020B
	thumb_func_start sub_8031650
sub_8031650:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r3, #0x00
	movs r0, #0x3A
	strh r0, [r4, #0x04]
	ldr r0, _080316E4 @ =0x00000351
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080316E8 @ =0x0000023B
	adds r0, r4, r1
	strb r3, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080316EC @ =0x00001030
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _080316F0 @ =0x00000239
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	subs r2, #0x39
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_804E0D8
	ldr r0, _080316F4 @ =0x00000355
	adds r4, r4, r0
	movs r0, #0x46
	strb r0, [r4, #0x00]
	ldr r1, _080316F8 @ =0x0000020B
	adds r5, r5, r1
	ldrb r0, [r5, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x56
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_080316E4: .4byte 0x00000351
_080316E8: .4byte 0x0000023B
_080316EC: .4byte 0x00001030
_080316F0: .4byte 0x00000239
_080316F4: .4byte 0x00000355
_080316F8: .4byte 0x0000020B
