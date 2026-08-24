	.syntax unified
	.text

	thumb_func_start sub_802C208
sub_802C208:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0x0
	ldr r1, _0802C234 @ =0x0000020B
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0802C238
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r6, [r0, #0x00]
	movs r7, #0x00
	b _0802C24A
	.byte 0x00, 0x00
_0802C234: .4byte 0x0000020B
_0802C238:
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r6, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r4, [r0, #0x00]
	movs r7, #0x04
_0802C24A:
	ldr r3, _0802C35C @ =0x000002B5
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	beq _0802C25C
	b _0802C386
_0802C25C:
	ldr r1, _0802C360 @ =0x00000351
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0802C26C
	b _0802C37C
_0802C26C:
	subs r3, #0xAD
	adds r0, r2, r3
	ldrb r3, [r0, #0x00]
	movs r5, #0x10
	adds r0, r5, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0802C27E
	b _0802C37C
_0802C27E:
	ldr r1, _0802C364 @ =0x00000359
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802C294
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0x00
	beq _0802C37C
_0802C294:
	movs r3, #0xD6
	lsls r3, r3, #0x02
	adds r5, r4, r3
	ldrh r6, [r5, #0x00]
	lsls r0, r6, #0x14
	lsrs r0, r0, #0x18
	mov r12, r0
	ldr r1, _0802C368 @ =0x0000023E
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r3, _0802C36C @ =0x00000353
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	asrs r1, r0
	cmp r1, #0x00
	bge _0802C2BC
	adds r1, #0x3F
_0802C2BC:
	asrs r1, r1, #0x06
	add r1, r12
	movs r0, #0xFF
	ands r1, r0
	lsls r1, r1, #0x04
	ldr r0, _0802C370 @ =0xFFFFF00F
	ands r0, r6
	orrs r0, r1
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x0C]
	subs r0, r0, r1
	ldr r1, _0802C374 @ =0x00000242
	adds r3, r4, r1
	strh r0, [r3, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r0, #0x04]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bne _0802C312
	lsls r0, r1, #0x10
	cmp r0, #0x00
	beq _0802C386
_0802C312:
	negs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_81DA690
	ldr r1, _0802C378 @ =0x0839F620
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r7, r7, r0
	mov r3, r8
	ands r7, r3
	lsls r0, r7, #0x05
	strb r0, [r4, #0x02]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _0802C386
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	b _0802C386
	.byte 0x00, 0x00
_0802C35C: .4byte 0x000002B5
_0802C360: .4byte 0x00000351
_0802C364: .4byte 0x00000359
_0802C368: .4byte 0x0000023E
_0802C36C: .4byte 0x00000353
_0802C370: .4byte 0xFFFFF00F
_0802C374: .4byte 0x00000242
_0802C378: .4byte dword_839F620 @ =0x0839F620
_0802C37C:
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x01
	bl sub_802C4D4
_0802C386:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
