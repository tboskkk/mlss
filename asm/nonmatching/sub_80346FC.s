	.syntax unified
	.text

	thumb_func_start sub_80346FC
sub_80346FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _0803484C @ =0x0000033E
	adds r7, r4, r0
	movs r0, #0x00
	ldsb r0, [r7, r0]
	lsls r0, r0, #0x02
	movs r1, #0x28
	adds r1, r1, r5
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0x00
	ldsb r0, [r7, r0]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0x00
	ldsb r1, [r7, r1]
	ldr r2, _08034850 @ =0x0000026A
	adds r3, r5, r2
	movs r0, #0x3F
	ands r1, r0
	lsls r1, r1, #0x07
	ldrh r2, [r3, #0x00]
	ldr r0, _08034854 @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r6, #0xDA
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldr r0, [r0, #0x00]
	movs r2, #0x09
	strb r2, [r0, #0x00]
	movs r0, #0x46
	strh r0, [r4, #0x04]
	ldr r0, _08034858 @ =0x00000351
	adds r3, r4, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	mov r12, r1
	mov r6, r12
	orrs r0, r6
	strb r0, [r3, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080347A0
	movs r6, #0xE2
	lsls r6, r6, #0x02
	adds r1, r4, r6
	ldr r0, [r1, #0x00]
	subs r6, #0x20
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	strb r2, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, _08034858 @ =0x00000351
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	mov r2, r12
	orrs r0, r2
	strb r0, [r1, #0x00]
_080347A0:
	ldr r6, _0803485C @ =0x0000035B
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	mov r1, r12
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r6, _08034860 @ =0x0000020D
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r3, #0x00]
	subs r6, #0x02
	adds r1, r5, r6
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08034864 @ =0x00000352
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	ldsb r0, [r7, r0]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r4, #0x0C]
	movs r0, #0x00
	ldsb r0, [r7, r0]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x10]
	ldr r2, _08034868 @ =0x00000355
	adds r1, r4, r2
	movs r0, #0x04
	strb r0, [r1, #0x00]
	ldr r1, _0803486C @ =0x00001045
	adds r0, r4, #0x0
	bl sub_8049000
	adds r6, #0x3B
	adds r2, r5, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_802DF80
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803484C: .4byte 0x0000033E
_08034850: .4byte 0x0000026A
_08034854: .4byte 0xFFFFE07F
_08034858: .4byte 0x00000351
_0803485C: .4byte 0x0000035B
_08034860: .4byte 0x0000020D
_08034864: .4byte 0x00000352
_08034868: .4byte 0x00000355
_0803486C: .4byte 0x00001045
