	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r8, r0
	mov r0, r9
	ldr r5, [r0, #0x2C]
	movs r6, #0x00
	movs r7, #0x00
_080B87D2:
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080B881C
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B881C
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r4, r0
	beq _080B881C
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080B881C
	adds r5, r4, #0x0
	adds r5, #0x08
_080B881C:
	adds r1, r7, #0x1
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080B8868
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B8868
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r4, r0
	beq _080B8868
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080B8868
	adds r5, r4, #0x0
	adds r5, #0x08
_080B8868:
	adds r7, #0x02
	cmp r7, #0x05
	ble _080B87D2
	mov r0, r9
	str r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B8890
	cmp r2, #0x04
	bne _080B88AC
_080B8890:
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B88AC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B88BA
	cmp r2, #0x04
	bne _080B896A
_080B88BA:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B88C2
	adds r1, #0xFF
_080B88C2:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B88D8
	adds r0, #0xFF
_080B88D8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B88EE
	adds r3, #0xFF
_080B88EE:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B891C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B892C
_080B8918: .4byte 0x03000FD8
_080B891C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B892C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B8934
	adds r0, #0xFF
_080B8934:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B898C @ =0x03001038
	ldr r0, _080B8990 @ =0x0819832C
	ldr r1, _080B8994 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B894E
	adds r1, #0x3F
_080B894E:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080B8998 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	mov r0, r8
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_8088164
_080B896A:
	mov r2, r8
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B899C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B89A0 @ =0x080B89A5
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B898C: .4byte 0x03001038
_080B8990: .4byte 0x0819832C
_080B8994: .4byte 0x08198220
_080B8998: .4byte 0x000006E4
_080B899C: .4byte 0x00000FFF
_080B89A0: .4byte sub_80B89A4
