	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CDFA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r4, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r7, #0x0
	bl sub_8087CE4
	ldr r2, [r4, #0x30]
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDF9C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CDFAC @ =0x0801008C
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CDF32
	ldr r2, _080CDFB0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CDF68
_080CDF32:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CDF3A
	adds r1, #0xFF
_080CDF3A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080CDF50
	adds r2, #0xFF
_080CDF50:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r5, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080CDF68:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDF7A
	cmp r1, #0x04
	bne _080CDF96
_080CDF7A:
	ldr r2, _080CDFB4 @ =0x00002065
	adds r0, r7, #0x0
	movs r1, #0x02
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
_080CDF96:
	ldr r0, _080CDFB8 @ =0x080D2E7D
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDF9C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDFA8: .4byte 0x03000FD8
_080CDFAC: .4byte 0x0801008C
_080CDFB0: .4byte 0x00000111
_080CDFB4: .4byte 0x00002065
_080CDFB8: .4byte sub_80D2E7C
