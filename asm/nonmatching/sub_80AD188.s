	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AD21C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080AD1A8
	adds r1, #0x0F
_080AD1A8:
	asrs r1, r1, #0x04
	ldr r0, _080AD220 @ =0xFFFFFD30
	cmp r1, r0
	bge _080AD224
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD1C2
	cmp r1, #0x04
	bne _080AD212
_080AD1C2:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AD1CA
	adds r0, #0xFF
_080AD1CA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AD1E4
	adds r2, #0xFF
_080AD1E4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x28
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AD212:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	b _080AD2A4
	.byte 0x00, 0x00
_080AD21C: .4byte 0x03000FD8
_080AD220: .4byte 0xFFFFFD30
_080AD224:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD236
	cmp r1, #0x04
	bne _080AD29E
_080AD236:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080AD240
	adds r1, #0xFF
_080AD240:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	mov r1, r12
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080AD258
	adds r0, #0xFF
_080AD258:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r0, r12
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080AD270
	adds r3, #0xFF
_080AD270:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_808843C
	movs r1, #0x28
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AD29E:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
_080AD2A4:
	str r0, [r1, #0x00]
	ldr r0, _080AD2B4 @ =0x080AD2B9
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AD2B4: .4byte sub_80AD2B8
