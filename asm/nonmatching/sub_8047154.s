	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	movs r6, #0x00
	mov r8, r6
	ldr r1, _08047198 @ =0x00000216
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r2
	cmp r1, #0x00
	beq _0804721C
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _080471B0
	cmp r1, #0x04
	bne _0804719C
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08047188
	adds r0, r5, #0x3
_08047188:
	asrs r0, r0, #0x02
	lsls r1, r0, #0x01
	adds r6, r1, r0
	lsls r0, r0, #0x02
	subs r5, r5, r0
	lsls r5, r5, #0x01
	b _080471D4
	.byte 0x00, 0x00
_08047198: .4byte 0x00000216
_0804719C:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471A4
	adds r0, r5, #0x7
_080471A4:
	asrs r0, r0, #0x03
	lsls r1, r0, #0x02
	adds r6, r1, r0
	lsls r0, r0, #0x03
	subs r5, r5, r0
	b _080471D4
_080471B0:
	cmp r1, #0x04
	bne _080471C6
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471BC
	adds r0, r5, #0x3
_080471BC:
	asrs r0, r0, #0x02
	lsls r6, r0, #0x02
	subs r5, r5, r6
	lsls r5, r5, #0x01
	b _080471D4
_080471C6:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471CE
	adds r0, r5, #0x7
_080471CE:
	asrs r0, r0, #0x03
	lsls r6, r0, #0x03
	subs r5, r5, r6
_080471D4:
	adds r4, r7, #0x0
	adds r4, #0x24
	movs r0, #0x07
	adds r2, r5, #0x0
	ands r2, r0
	ldrb r3, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x4C
	ldrb r0, [r3, #0x00]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, _08047250 @ =0x083A05EC
	ldr r1, _08047254 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	lsrs r0, r0, #0x07
	mov r8, r0
_0804721C:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	adds r1, r6, r5
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r2, r12
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	mov r1, r8
	lsls r3, r1, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047250: .4byte 0x083A05EC
_08047254: .4byte 0x00000216
