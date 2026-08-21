	.syntax unified
	.text

	thumb_func_start sub_8087EFC
sub_8087EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r2, r12
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	mov r4, r12
	adds r4, #0x7A
	movs r1, #0x00
	ldsh r0, [r4, r1]
	mov r1, r12
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08087F24
	adds r0, #0xFF
_08087F24:
	asrs r0, r0, #0x08
	adds r3, r3, r0
	ldrh r1, [r2, #0x00]
	mov r0, r12
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r3, [r2, #0x00]
	ldr r0, _08087FDC @ =0x00003FFF
	mov r8, r0
	cmp r3, r8
	bgt _08087FE0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _08087FE0
	mov r0, r12
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	subs r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08087F56
	adds r0, #0xFF
_08087F56:
	asrs r0, r0, #0x08
	muls r0, r3
	cmp r0, #0x00
	bge _08087F60
	adds r0, #0x3F
_08087F60:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	muls r0, r3
	adds r4, r1, r0
	mov r0, r12
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	asrs r3, r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r3, r3, r1
	mov r5, r12
	adds r5, #0x88
	ldr r0, [r5, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r7, r2, r0
	mov r6, r12
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r1, r1, #0x08
	adds r0, r3, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087F9E
	add r0, r8
_08087F9E:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r1, r12
	str r0, [r1, #0x10]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x08
	adds r0, r7, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087FB6
	add r0, r8
_08087FB6:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r1, r0, #0x08
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087FCE
	add r0, r8
_08087FCE:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x18]
	movs r0, #0x01
	b _08088016
	.byte 0x00, 0x00
_08087FDC: .4byte 0x00003FFF
_08087FE0:
	mov r0, r12
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r5, r12
	str r0, [r5, #0x10]
	mov r0, r12
	adds r0, #0x88
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r5, #0x14]
	mov r0, r12
	adds r0, #0x8C
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	mov r1, r12
	str r0, [r1, #0x18]
	mov r2, r12
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08088016:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
