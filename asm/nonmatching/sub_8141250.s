	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141282
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814128E
_08141282:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814128E:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r3, r6, r1
	strh r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _08141308 @ =0x03001038
	ldr r0, _0814130C @ =0x0819832C
	ldr r1, _08141310 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r7, r1, r0
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141314
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141318
_08141308: .4byte 0x03001038
_0814130C: .4byte 0x0819832C
_08141310: .4byte 0x08198220
_08141314:
	movs r1, #0x01
	negs r1, r1
_08141318:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r7
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814136C @ =0x08141371
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814136C: .4byte sub_8141370
