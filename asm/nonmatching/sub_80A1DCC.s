	.syntax unified
	.text

	thumb_func_start sub_80A1DCC
sub_80A1DCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A1E70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A1DF4
	b _080A1F32
_080A1DF4:
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1E12
	cmp r1, #0x04
	bne _080A1EC2
_080A1E12:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A1E1A
	adds r1, #0xFF
_080A1E1A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A1E30
	adds r0, #0xFF
_080A1E30:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A1E46
	adds r3, #0xFF
_080A1E46:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080A1E74
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080A1E84
	.byte 0x00, 0x00
_080A1E70: .4byte 0x03000FD8
_080A1E74:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080A1E84:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A1E8C
	adds r0, #0xFF
_080A1E8C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080A1EF4 @ =0x03001038
	ldr r0, _080A1EF8 @ =0x0819832C
	ldr r1, _080A1EFC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080A1EA6
	adds r1, #0x3F
_080A1EA6:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080A1F00 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080A1EC2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1ED4
	cmp r1, #0x04
	bne _080A1F20
_080A1ED4:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A1F04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1F10
_080A1EF4: .4byte 0x03001038
_080A1EF8: .4byte 0x0819832C
_080A1EFC: .4byte 0x08198220
_080A1F00: .4byte 0x000006E4
_080A1F04:
	ldr r2, _080A1F40 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080A1F10:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A1F20:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A1F44 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A1F48 @ =0x080A1F4D
	mov r1, r9
	str r0, [r1, #0x4C]
_080A1F32:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A1F40: .4byte 0x0000204D
_080A1F44: .4byte 0x00000FFF
_080A1F48: .4byte sub_80A1F4C
