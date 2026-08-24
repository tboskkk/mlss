	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080CF114 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r9, r0
	ldr r4, [r1, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	ldr r5, [r6, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CF096
	b _080CF194
_080CF096:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x7D
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF0B6
	cmp r1, #0x04
	bne _080CF168
_080CF0B6:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CF0BE
	adds r1, #0xFF
_080CF0BE:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CF0D4
	adds r0, #0xFF
_080CF0D4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080CF0EA
	adds r3, #0xFF
_080CF0EA:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0A
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080CF118
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080CF128
_080CF114: .4byte 0x03000FD8
_080CF118:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080CF128:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080CF130
	adds r0, #0xFF
_080CF130:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080CF1A4 @ =0x03001038
	ldr r0, _080CF1A8 @ =0x0819832C
	ldr r1, _080CF1AC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080CF14A
	adds r1, #0x3F
_080CF14A:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080CF168:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	mov r3, r9
	adds r3, #0xAE
	ldrh r2, [r3, #0x00]
	ldr r1, _080CF1B0 @ =0x00000FFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA8
	movs r0, #0x01
	str r0, [r2, #0x00]
	adds r2, #0x06
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080CF1B4 @ =0x080CF1B9
	str r0, [r6, #0x4C]
_080CF194:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CF1A4: .4byte 0x03001038
_080CF1A8: .4byte 0x0819832C
_080CF1AC: .4byte 0x08198220
_080CF1B0: .4byte 0x00000FFF
_080CF1B4: .4byte sub_80CF1B8
