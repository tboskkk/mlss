	.syntax unified
	.text

	thumb_func_start sub_8072BE8
sub_8072BE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r9, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072C12
	adds r0, #0xFF
_08072C12:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072C22
	adds r0, #0xFF
_08072C22:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08072C32
	adds r0, #0xFF
_08072C32:
	asrs r0, r0, #0x08
	movs r1, #0xB2
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	movs r6, #0x00
	ldsh r0, [r5, r6]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	adds r2, #0xDC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _08072CDC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	mov r2, r8
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	muls r1, r5
	bl __divsi3
	cmp r0, #0x01
	bne _08072C8C
	movs r0, #0x02
_08072C8C:
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x41
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08072CE0 @ =0x08074261
	str r0, [r4, #0x60]
	ldr r0, _08072CE4 @ =0x08072CE9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x05
	str r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072CDC: .4byte 0x03001038
_08072CE0: .4byte sub_8074260
_08072CE4: .4byte sub_8072CE8
