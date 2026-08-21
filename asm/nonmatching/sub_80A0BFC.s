	.syntax unified
	.text

	thumb_func_start sub_80A0BFC
sub_80A0BFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A0CA0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A0C24
	b _080A0D62
_080A0C24:
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
	beq _080A0C42
	cmp r1, #0x04
	bne _080A0CF2
_080A0C42:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A0C4A
	adds r1, #0xFF
_080A0C4A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A0C60
	adds r0, #0xFF
_080A0C60:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A0C76
	adds r3, #0xFF
_080A0C76:
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
	bne _080A0CA4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080A0CB4
	.byte 0x00, 0x00
_080A0CA0: .4byte 0x03000FD8
_080A0CA4:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080A0CB4:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A0CBC
	adds r0, #0xFF
_080A0CBC:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080A0D24 @ =0x03001038
	ldr r0, _080A0D28 @ =0x0819832C
	ldr r1, _080A0D2C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080A0CD6
	adds r1, #0x3F
_080A0CD6:
	asrs r1, r1, #0x06
	adds r1, #0x26
	ldr r0, _080A0D30 @ =0x000005A4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080A0CF2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0D04
	cmp r1, #0x04
	bne _080A0D50
_080A0D04:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A0D34
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080A0D40
_080A0D24: .4byte 0x03001038
_080A0D28: .4byte 0x0819832C
_080A0D2C: .4byte 0x08198220
_080A0D30: .4byte 0x000005A4
_080A0D34:
	ldr r2, _080A0D70 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080A0D40:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A0D50:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A0D74 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A0D78 @ =0x080A0D7D
	mov r1, r9
	str r0, [r1, #0x4C]
_080A0D62:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A0D70: .4byte 0x0000204D
_080A0D74: .4byte 0x00000FFF
_080A0D78: .4byte sub_80A0D7C
