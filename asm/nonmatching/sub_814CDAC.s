	.syntax unified
	.text

	thumb_func_start sub_814CDAC
sub_814CDAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x18]
	adds r1, r1, r2
	adds r5, r0, #0x0
	cmp r3, r1
	blt _0814CDEA
	adds r5, r4, #0x0
_0814CDEA:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r3, r12
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x23
	ldrb r0, [r2, #0x00]
	cmp r0, #0x04
	bls _0814CE34
	movs r3, #0x2A
	ldsh r0, [r1, r3]
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814CE34
	movs r0, #0x06
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814CE34:
	ldr r0, _0814CED8 @ =0x00000216
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814CE88
	mov r0, r12
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _0814CE88
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldr r1, _0814CEDC @ =0x02000001
	ands r0, r1
	cmp r0, r1
	bne _0814CE88
	mov r1, r12
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x18]
	adds r2, r2, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r3, #0xF0
	lsls r3, r3, #0x08
	adds r0, r0, r3
	cmp r2, r0
	bge _0814CE88
	mov r0, r12
	adds r0, #0x52
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0814CE88
	cmp r0, #0x9F
	ble _0814CECC
_0814CE88:
	mov r0, r12
	movs r1, #0x00
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814CEE0 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _0814CEE4 @ =0x0814CEE9
	str r0, [r1, #0x0C]
_0814CECC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814CED8: .4byte 0x00000216
_0814CEDC: .4byte 0x02000001
_0814CEE0: .4byte sub_813B1E8
_0814CEE4: .4byte sub_814CEE8
