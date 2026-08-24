	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	ldr r1, _080413F8 @ =0x02000001
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, r1
	beq _0804138A
	b _08041588
_0804138A:
	ldr r2, _080413FC @ =0x00000216
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804139A
	b _08041588
_0804139A:
	movs r0, #0xE0
	lsls r0, r0, #0x0A
	ands r0, r3
	cmp r0, #0x00
	beq _08041484
	ldr r4, _08041400 @ =0x0000020F
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08041484
	ldr r1, _08041404 @ =0x00000212
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	ldr r2, [r5, #0x18]
	cmp r0, #0x00
	beq _080413C6
	cmp r2, #0x00
	bge _080413DE
_080413C6:
	cmp r2, #0x00
	ble _08041484
	lsls r0, r3, #0x0E
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bhi _080413DE
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08041484
_080413DE:
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	beq _0804146C
	cmp r0, #0x03
	bls _08041408
	cmp r0, #0x04
	beq _08041478
	b _0804148C
_080413F8: .4byte 0x02000001
_080413FC: .4byte 0x00000216
_08041400: .4byte 0x0000020F
_08041404: .4byte 0x00000212
_08041408:
	cmp r0, #0x01
	bcc _0804148C
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08041414
	adds r0, #0xFF
_08041414:
	asrs r0, r0, #0x08
	ldrh r1, [r5, #0x0A]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0A
	bgt _08041430
	ldr r0, _0804142C @ =0x0000023D
	adds r1, r5, r0
	movs r0, #0x01
	b _08041446
	.byte 0x00, 0x00
_0804142C: .4byte 0x0000023D
_08041430:
	cmp r0, #0x14
	bgt _08041440
	ldr r2, _0804143C @ =0x0000023D
	adds r1, r5, r2
	movs r0, #0x02
	b _08041446
_0804143C: .4byte 0x0000023D
_08041440:
	ldr r4, _08041468 @ =0x0000023D
	adds r1, r5, r4
	movs r0, #0x03
_08041446:
	strb r0, [r1, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x0A
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	cmp r0, r1
	bne _0804148C
	ldr r2, _08041468 @ =0x0000023D
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x03
	b _0804148A
_08041468: .4byte 0x0000023D
_0804146C:
	ldr r4, _08041474 @ =0x0000023D
	adds r1, r5, r4
	movs r0, #0x07
	b _0804148A
_08041474: .4byte 0x0000023D
_08041478:
	ldr r0, _08041480 @ =0x0000023D
	adds r1, r5, r0
	movs r0, #0x08
	b _0804148A
_08041480: .4byte 0x0000023D
_08041484:
	ldr r2, _08041500 @ =0x0000023D
	adds r1, r5, r2
	movs r0, #0x00
_0804148A:
	strb r0, [r1, #0x00]
_0804148C:
	ldr r4, _08041500 @ =0x0000023D
	adds r1, r5, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08041588
	ldr r4, _08041504 @ =0x083A065C
	subs r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r4
	movs r3, #0x00
	ldsb r3, [r0, r3]
	ldrh r1, [r5, #0x06]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	ldrh r1, [r5, #0x08]
	ldrh r2, [r5, #0x0A]
	subs r1, r1, r2
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsrs r2, r3, #0x10
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x0D
	adds r3, r3, r0
	movs r0, #0x88
	lsls r0, r0, #0x11
	adds r7, r4, #0x0
	cmp r3, r0
	bhi _08041588
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x10
	negs r1, r1
	mov r12, r0
	cmp r2, r1
	blt _08041588
	cmp r2, #0xB0
	bgt _08041588
	movs r2, #0x8E
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	blt _08041508
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x00]
	b _0804150A
	.byte 0x00, 0x00
_08041500: .4byte 0x0000023D
_08041504: .4byte 0x083A065C
_08041508:
	movs r2, #0x00
_0804150A:
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r4, [r0, #0x00]
	cmp r2, #0x00
	beq _08041534
	ldrb r3, [r2, #0x1F]
	lsls r1, r3, #0x1E
	lsrs r0, r1, #0x1E
	cmp r4, r0
	ble _08041522
	adds r4, r0, #0x0
_08041522:
	lsls r1, r3, #0x1C
	lsrs r0, r1, #0x1E
	cmp r4, r0
	ble _0804152C
	adds r4, r0, #0x0
_0804152C:
	ldr r0, [r2, #0x34]
	ldr r0, [r0, #0x08]
	subs r0, #0x01
	b _0804153A
_08041534:
	lsls r0, r4, #0x1E
	ldr r1, _08041598 @ =0x3FFFC000
	orrs r0, r1
_0804153A:
	str r0, [r6, #0x08]
	ldr r2, _0804159C @ =0x0000023D
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r7
	mov r5, r12
	asrs r1, r5, #0x10
	movs r2, #0xFF
	ands r1, r2
	ldrh r0, [r0, #0x02]
	orrs r1, r0
	movs r2, #0x00
	strh r1, [r6, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r7
	mov r5, r8
	lsls r1, r5, #0x17
	lsrs r1, r1, #0x17
	ldrh r0, [r0, #0x04]
	orrs r1, r0
	strh r1, [r6, #0x02]
	lsls r1, r4, #0x0A
	movs r4, #0xF0
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	orrs r1, r0
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x06]
	orrs r1, r0
	strh r1, [r6, #0x04]
	strh r2, [r6, #0x06]
	ldr r6, [r6, #0x10]
_08041588:
	adds r0, r6, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08041598: .4byte 0x3FFFC000
_0804159C: .4byte 0x0000023D
