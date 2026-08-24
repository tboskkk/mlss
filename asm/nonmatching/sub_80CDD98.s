	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080CDE94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r8, r1
	mov r6, r8
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, [r6, #0x30]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDE86
	mov r0, r8
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDDEC
	cmp r1, #0x04
	bne _080CDE08
_080CDDEC:
	ldr r2, _080CDE98 @ =0x00002036
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CDE08:
	ldr r0, [r5, #0x10]
	movs r2, #0x87
	lsls r2, r2, #0x09
	adds r0, r0, r2
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r1, [r6, #0x30]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDE38
	cmp r1, #0x04
	bne _080CDE80
_080CDE38:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080CDE40
	adds r0, #0xFF
_080CDE40:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CDE5A
	adds r2, #0xFF
_080CDE5A:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CDE80:
	ldr r0, _080CDE9C @ =0x080CDEA1
	mov r1, r9
	str r0, [r1, #0x4C]
_080CDE86:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDE94: .4byte 0x03000FD8
_080CDE98: .4byte 0x00002036
_080CDE9C: .4byte sub_80CDEA0
