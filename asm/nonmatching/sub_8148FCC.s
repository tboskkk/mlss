	.syntax unified
	.text

	thumb_func_start sub_8148FCC
sub_8148FCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	mov r10, r0
	movs r2, #0x01
	mov r9, r2
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _08149078
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08149022
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08149022:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081490D8
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r0, [r6, #0x08]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x28]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrb r0, [r5, #0x00]
	mov r1, r10
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _081490D8
_08149078:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814909A
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814909A:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _081490D8
	str r1, [r4, #0x18]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	beq _081490D4
	ldr r0, _081490D0 @ =0x08148E99
	b _081490D6
_081490D0: .4byte sub_8148E98
_081490D4:
	ldr r0, _081490E8 @ =0x081490ED
_081490D6:
	str r0, [r7, #0x00]
_081490D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081490E8: .4byte sub_81490EC
