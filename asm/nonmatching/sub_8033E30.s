	.syntax unified
	.text

	thumb_func_start sub_8033E30
sub_8033E30:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08033E54
	adds r0, #0xFF
_08033E54:
	asrs r0, r0, #0x08
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	bge _08033E68
	adds r1, #0xFF
_08033E68:
	asrs r1, r1, #0x08
	ldr r3, _08033F1C @ =0x0000024A
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	ldr r2, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldr r1, [r7, #0x00]
	movs r0, #0x40
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r7, #0x00]
	ldr r4, _08033F20 @ =0x00000351
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
	ldr r4, [r5, #0x00]
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r4, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08033EC0
	adds r1, #0xFF
_08033EC0:
	asrs r1, r1, #0x08
	adds r1, #0x14
	mov r9, r1
	movs r1, #0xFB
	adds r1, r1, r6
	mov r8, r1
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r12, r1
	adds r0, r4, #0x0
	mov r1, r9
	mov r3, r12
	bl sub_80400B0
	ldr r2, [r5, #0x00]
	ldr r0, [r7, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _08033EF8
	adds r3, #0xFF
_08033EF8:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08033F02
	adds r0, #0xFF
_08033F02:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08033F24
	movs r0, #0x12
	b _08033F26
	.byte 0x00, 0x00
_08033F1C: .4byte 0x0000024A
_08033F20: .4byte 0x00000351
_08033F24:
	movs r0, #0x0C
_08033F26:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	ldr r1, _08033F58 @ =0x0000020B
	adds r2, r6, r1
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
_08033F58: .4byte 0x0000020B
