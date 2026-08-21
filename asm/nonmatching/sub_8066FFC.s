	.syntax unified
	.text

	thumb_func_start sub_8066FFC
sub_8066FFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	beq _08067016
	b _08067162
_08067016:
	movs r0, #0xAC
	adds r0, r0, r5
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08067108
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	adds r2, r5, #0x0
	adds r2, #0x9C
	str r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r3, #0x84
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067068
	adds r0, #0xFF
_08067068:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08067078
	adds r0, #0xFF
_08067078:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067088
	adds r0, #0xFF
_08067088:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08067100 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080670BE
	adds r0, #0xFF
_080670BE:
	asrs r7, r0, #0x08
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _080670D8
	movs r0, #0x02
_080670D8:
	negs r0, r0
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	mov r3, r8
	str r0, [r3, #0x00]
	str r7, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	mov r1, r10
	mov r0, r9
	strh r1, [r0, #0x00]
	ldr r0, _08067104 @ =0x08067179
	b _08067160
	.byte 0x00, 0x00
_08067100: .4byte 0x03001038
_08067104: .4byte sub_8067178
_08067108:
	bl sub_8199F30
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r1, [r5, #0x2C]
	ldr r2, [r1, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	movs r1, #0x1D
	ands r1, r0
	lsls r1, r1, #0x08
	movs r0, #0x98
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	mov r1, r10
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08067174 @ =0x080678E9
_08067160:
	str r0, [r5, #0x4C]
_08067162:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067174: .4byte sub_80678E8
