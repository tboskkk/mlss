	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B2128 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B20A2
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B20A2
	strh r1, [r2, #0x06]
_080B20A2:
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B212C @ =0x03001038
	ldr r2, _080B2130 @ =0x0819832C
	ldr r3, _080B2134 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B20F0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B20F2
_080B20F0:
	movs r1, #0x00
_080B20F2:
	cmp r1, #0x00
	beq _080B21A8
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2108
	cmp r1, #0x04
	bne _080B2154
_080B2108:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2138
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2144
_080B2128: .4byte 0x03000FD8
_080B212C: .4byte 0x03001038
_080B2130: .4byte 0x0819832C
_080B2134: .4byte 0x08198220
_080B2138:
	ldr r2, _080B2188 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2144:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2154:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2166
	cmp r1, #0x04
	bne _080B21A8
_080B2166:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B218C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2198
	.byte 0x00, 0x00
_080B2188: .4byte 0x0000204D
_080B218C:
	ldr r2, _080B2248 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2198:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B21A8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B21B8
	b _080B22C2
_080B21B8:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r7, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B21D4
	adds r1, #0xFF
_080B21D4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B21DE
	adds r2, #0xFF
_080B21DE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B21E8
	adds r3, #0xFF
_080B21E8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B21FA
	adds r1, #0xFF
_080B21FA:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B2204
	adds r2, #0xFF
_080B2204:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B220E
	adds r3, #0xFF
_080B220E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B222A
	cmp r1, #0x04
	bne _080B2268
_080B222A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B224C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2258
	.byte 0x00, 0x00
_080B2248: .4byte 0x0000204D
_080B224C:
	ldr r2, _080B229C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2258:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2268:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B227A
	cmp r1, #0x04
	bne _080B22BC
_080B227A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B22A0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B22AC
	.byte 0x00, 0x00
_080B229C: .4byte 0x0000204D
_080B22A0:
	ldr r2, _080B22D0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B22AC:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B22BC:
	ldr r0, _080B22D4 @ =0x080B22D9
	mov r3, r8
	str r0, [r3, #0x4C]
_080B22C2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B22D0: .4byte 0x0000204D
_080B22D4: .4byte sub_80B22D8
