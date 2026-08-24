	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B7900 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B7828
	b _080B7960
_080B7828:
	movs r0, #0x98
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7846
	cmp r1, #0x04
	bne _080B7862
_080B7846:
	ldr r2, _080B7904 @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B7862:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7876
	cmp r2, #0x04
	bne _080B7892
_080B7876:
	ldr r2, _080B7908 @ =0x00002060
	adds r0, r6, #0x0
	movs r1, #0x04
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
_080B7892:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B78A0
	cmp r2, #0x04
	bne _080B795A
_080B78A0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B78A8
	adds r1, #0xFF
_080B78A8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B78BE
	adds r0, #0xFF
_080B78BE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B78D4
	adds r3, #0xFF
_080B78D4:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B790C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B791C
	.byte 0x00, 0x00
_080B7900: .4byte 0x03000FD8
_080B7904: .4byte 0x00002031
_080B7908: .4byte 0x00002060
_080B790C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B791C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7924
	adds r0, #0xFF
_080B7924:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B796C @ =0x03001038
	ldr r0, _080B7970 @ =0x0819832C
	ldr r1, _080B7974 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B793E
	adds r1, #0x3F
_080B793E:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080B7978 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080B795A:
	ldr r0, _080B797C @ =0x080B7981
	mov r1, r8
	str r0, [r1, #0x4C]
_080B7960:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B796C: .4byte 0x03001038
_080B7970: .4byte 0x0819832C
_080B7974: .4byte 0x08198220
_080B7978: .4byte 0x000006E4
_080B797C: .4byte sub_80B7980
