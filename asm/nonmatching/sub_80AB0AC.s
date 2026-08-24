	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AB1A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB0F4
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB0F4
	strh r1, [r2, #0x06]
_080AB0F4:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	bne _080AB106
	b _080AB260
_080AB106:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r8, r1
	cmp r2, #0x02
	beq _080AB124
	cmp r2, #0x04
	bne _080AB140
_080AB124:
	ldr r2, _080AB1A8 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB140:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB152
	cmp r1, #0x04
	bne _080AB16A
_080AB152:
	ldr r2, _080AB1AC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB16A:
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AB1B0 @ =0x040A1688
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r4, #0x24]
	adds r1, #0x01
	strh r1, [r4, #0x24]
	cmp r0, #0x01
	bne _080AB1B4
	adds r0, r4, #0x0
	bl sub_8086764
	b _080AB260
_080AB1A4: .4byte 0x03000FD8
_080AB1A8: .4byte 0x00002030
_080AB1AC: .4byte 0x0000204D
_080AB1B0: .4byte 0x040A1688
_080AB1B4:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AB1D0
	ldr r3, _080AB270 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AB21C
_080AB1D0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB1D8
	adds r1, #0xFF
_080AB1D8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB1EE
	adds r0, #0xFF
_080AB1EE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB204
	adds r3, #0xFF
_080AB204:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AB274 @ =0x0000070B
	str r5, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80DF024
_080AB21C:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB22C
	cmp r2, #0x04
	bne _080AB25A
_080AB22C:
	ldr r2, _080AB278 @ =0x03001038
	ldr r0, _080AB27C @ =0x0819832C
	ldr r1, _080AB280 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
_080AB25A:
	ldr r0, _080AB284 @ =0x080AB289
	mov r2, r9
	str r0, [r2, #0x4C]
_080AB260:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB270: .4byte 0x00000111
_080AB274: .4byte 0x0000070B
_080AB278: .4byte 0x03001038
_080AB27C: .4byte 0x0819832C
_080AB280: .4byte 0x08198220
_080AB284: .4byte sub_80AB288
