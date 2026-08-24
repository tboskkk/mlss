	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r7, [r0, #0x00]
	ldr r4, _081403F4 @ =0x0000033E
	adds r2, r5, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0x01
	b _0814042C
	.byte 0x00, 0x00
_081403F4: .4byte 0x0000033E
_081403F8:
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	lsls r1, r6, #0x02
	lsls r0, r0, #0x02
	add r0, r10
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	ldr r0, _081404D4 @ =0x0000033E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r6, #0x1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0814042C:
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	cmp r6, r0
	blt _081403F8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	add r1, r8
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x16]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	add r2, r8
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r2, [r0, #0x06]
	ldr r4, _081404D8 @ =0x0000023E
	adds r1, r5, r4
	strh r2, [r1, #0x00]
	ldrh r1, [r0, #0x06]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r4, #0xAE
	adds r2, r5, r4
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r3, [r0, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x01]
	adds r4, #0x0C
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	ldr r0, _081404DC @ =0x0000020E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _081404E0 @ =0x0000020D
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081404E4 @ =0x081404F1
	str r0, [r1, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081404E8 @ =0x081407A1
	str r0, [r1, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081404EC @ =0x08140FAD
	str r0, [r1, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081404D4: .4byte 0x0000033E
_081404D8: .4byte 0x0000023E
_081404DC: .4byte 0x0000020E
_081404E0: .4byte 0x0000020D
_081404E4: .4byte sub_81404F0
_081404E8: .4byte sub_81407A0
_081404EC: .4byte sub_8140FAC
