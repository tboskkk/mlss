	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r4, r0, #0x0
	mov r9, r2
	ldr r0, [r4, #0x14]
	ldr r1, [r2, #0x04]
	lsls r3, r1, #0x02
	adds r2, r0, #0x0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	mov r10, r2
	add r3, sp, #0x01C
	add r2, sp, #0x018
	bl get_fobj_screen_pos
	ldr r0, [sp, #0x018]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080EE844 @ =0x083BA4B4
	mov r2, r9
	ldrb r0, [r2, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r8, r0
	ldr r1, [r2, #0x0C]
	movs r5, #0x1F
	ands r5, r1
	lsls r0, r1, #0x01
	movs r3, #0xF0
	lsls r3, r3, #0x02
	adds r2, r3, #0x0
	ands r0, r2
	orrs r5, r0
	lsls r1, r1, #0x02
	movs r7, #0x80
	lsls r7, r7, #0x04
	adds r0, r7, #0x0
	ands r1, r0
	orrs r5, r1
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EE85A
	mov r0, r8
	cmp r0, #0x03
	bhi _080EE848
	movs r1, #0x04
	mov r8, r1
	b _080EE85A
	.byte 0x00, 0x00
_080EE844: .4byte 0x083BA4B4
_080EE848:
	mov r0, r8
	adds r0, #0x01
	movs r2, #0x02
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080EE85A:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	bne _080EE924
	ldr r0, [r4, #0x14]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r2, r1, #0x02
	adds r2, r2, r0
	ldr r4, [r2, #0x28]
	add r2, sp, #0x020
	add r3, sp, #0x024
	bl get_fobj_screen_pos
	ldr r1, _080EE8B8 @ =0x00000283
	add r1, r10
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x01
	adds r0, #0x50
	ldr r2, [sp, #0x01C]
	cmp r0, r2
	bge _080EE8BC
	movs r3, #0x02
	ldrb r0, [r1, #0x00]
	ldr r7, _080EE8B8 @ =0x00000283
	adds r1, r4, r7
	subs r0, r2, r0
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x024]
	cmp r0, r1
	ble _080EE8D6
	movs r3, #0x82
	movs r1, #0xA0
	subs r1, r1, r2
	mov r0, r8
	adds r0, #0x03
	lsls r0, r0, #0x03
	cmp r1, r0
	ble _080EE8D6
	movs r3, #0x01
	b _080EE8D6
_080EE8B8: .4byte 0x00000283
_080EE8BC:
	movs r3, #0x01
	ldr r0, [sp, #0x024]
	cmp r2, r0
	bge _080EE8D6
	movs r3, #0x81
	ldrb r1, [r1, #0x00]
	subs r1, r2, r1
	mov r0, r8
	adds r0, #0x03
	lsls r0, r0, #0x03
	cmp r1, r0
	ble _080EE8D6
	movs r3, #0x02
_080EE8D6:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	beq _080EE916
	ldr r1, [sp, #0x020]
	ldr r0, [sp, #0x018]
	subs r1, r1, r0
	cmp r1, #0x00
	blt _080EE8FC
	cmp r1, #0x0F
	bgt _080EE916
	movs r0, #0xC0
	orrs r5, r0
	lsls r0, r6, #0x10
	ldr r1, _080EE8F8 @ =0xFFE80000
	adds r0, r0, r1
	b _080EE914
_080EE8F8: .4byte 0xFFE80000
_080EE8FC:
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	ble _080EE916
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	movs r2, #0xC0
	lsls r2, r2, #0x0D
	adds r0, r0, r2
_080EE914:
	lsrs r6, r0, #0x10
_080EE916:
	lsls r0, r3, #0x08
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r1, r3, #0x0
	ands r0, r1
	orrs r5, r0
	b _080EE946
_080EE924:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0x00
	beq _080EE946
	movs r0, #0x80
	ands r0, r5
	movs r1, #0x18
	cmp r0, #0x00
	beq _080EE938
	ldr r1, _080EE96C @ =0x0000FFE8
_080EE938:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080EE946:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r5
	movs r1, #0x80
	lsls r1, r1, #0x02
	cmp r0, r1
	bne _080EE974
	ldr r0, [sp, #0x01C]
	subs r0, #0x0D
	mov r1, r8
	adds r1, #0x02
	ldr r2, _080EE970 @ =0x00000283
	add r2, r10
	lsls r1, r1, #0x03
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	subs r0, r0, r1
	b _080EE978
	.byte 0x00, 0x00
_080EE96C: .4byte 0x0000FFE8
_080EE970: .4byte 0x00000283
_080EE974:
	ldr r0, [sp, #0x01C]
	subs r0, #0x02
_080EE978:
	str r0, [sp, #0x01C]
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _080EE992
	movs r0, #0x00
	str r0, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080EE9BC
	movs r0, #0x10
	b _080EE9B2
_080EE992:
	mov r7, r8
	lsls r1, r7, #0x03
	adds r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x9F
	ble _080EE9BC
	movs r0, #0x90
	subs r1, r0, r1
	str r1, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _080EE9BC
	adds r0, r1, #0x0
	subs r0, #0x10
_080EE9B2:
	str r0, [sp, #0x01C]
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080EE9BC:
	mov r1, r9
	ldr r0, [r1, #0x08]
	asrs r4, r0, #0x08
	movs r7, #0xFF
	ands r4, r7
	cmp r4, #0x00
	bne _080EE9D8
	ldr r0, _080EEA1C @ =0x03000FCC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x14]
	bl sub_80E9310
	lsrs r4, r0, #0x10
	ands r4, r7
_080EE9D8:
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EE9FE
	adds r0, r4, #0x2
	movs r1, #0x03
	bl __divsi3
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080EE9FE
	ldr r0, [sp, #0x018]
	adds r0, #0x04
	str r0, [sp, #0x018]
_080EE9FE:
	lsls r0, r4, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _080EEA0A
	movs r4, #0x02
	movs r7, #0x02
_080EEA0A:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080EEA24
	movs r6, #0x20
	ldr r0, _080EEA20 @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	b _080EEA2C
	.byte 0x00, 0x00
_080EEA1C: .4byte 0x03000FCC
_080EEA20: .4byte 0x0000FF7F
_080EEA24:
	cmp r0, #0xEF
	ble _080EEA2E
	movs r6, #0xD0
	movs r0, #0xC0
_080EEA2C:
	orrs r5, r0
_080EEA2E:
	ldr r0, [sp, #0x018]
	subs r0, #0x10
	lsls r1, r4, #0x02
	subs r3, r0, r1
	str r3, [sp, #0x018]
	adds r1, r3, #0x0
	adds r1, #0x18
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0x0
	cmp r1, r2
	ble _080EEA4C
	adds r0, r2, #0x0
	subs r0, #0x18
	b _080EEA5C
_080EEA4C:
	lsls r1, r4, #0x03
	adds r0, r3, r1
	adds r0, #0x08
	cmp r0, r2
	bge _080EEA5E
	adds r0, r2, #0x0
	subs r0, #0x08
	subs r0, r0, r1
_080EEA5C:
	str r0, [sp, #0x018]
_080EEA5E:
	asrs r2, r6, #0x10
	cmp r2, #0x17
	bgt _080EEA9C
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0xC0
	bne _080EEA78
	adds r0, r2, #0x0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080EEA7A
_080EEA78:
	movs r6, #0x18
_080EEA7A:
	movs r3, #0x00
	str r3, [sp, #0x018]
	ldr r0, _080EEA98 @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	orrs r5, r0
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	lsls r1, r4, #0x01
	subs r0, r0, r1
	subs r0, #0x18
	adds r6, r2, #0x0
	cmp r3, r0
	bge _080EEAD0
	b _080EEACE
_080EEA98: .4byte 0x0000FF7F
_080EEA9C:
	cmp r2, #0xD7
	ble _080EEAD0
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x40
	bne _080EEAB4
	adds r0, r2, #0x0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080EEAB6
_080EEAB4:
	movs r6, #0xC8
_080EEAB6:
	lsls r0, r4, #0x03
	movs r1, #0xD0
	subs r1, r1, r0
	str r1, [sp, #0x018]
	movs r0, #0xC0
	orrs r5, r0
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	subs r0, #0x18
	adds r6, r2, #0x0
	cmp r1, r0
	ble _080EEAD0
_080EEACE:
	str r0, [sp, #0x018]
_080EEAD0:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080EEAF8
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EEAF4
	asrs r1, r6, #0x10
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080EEAE8
	adds r0, r1, #0x7
_080EEAE8:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080EEB2A
_080EEAF4:
	movs r0, #0x00
	b _080EEB2A
_080EEAF8:
	lsls r1, r4, #0x03
	adds r0, r0, r1
	adds r0, #0x20
	cmp r0, #0xF0
	ble _080EEB2C
	movs r0, #0xD0
	subs r1, r0, r1
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080EEB28
	subs r1, #0x08
	asrs r2, r6, #0x10
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080EEB1A
	adds r0, r2, #0x7
_080EEB1A:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080EEB2A
_080EEB28:
	adds r0, r1, #0x0
_080EEB2A:
	str r0, [sp, #0x018]
_080EEB2C:
	ldr r2, [sp, #0x018]
	asrs r4, r6, #0x10
	subs r4, r4, r2
	ldr r3, _080EEB78 @ =0xFFFFFF00
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080EEB7C @ =0x03000FCC
	ldr r0, [r0, #0x00]
	mov r6, r9
	ldrb r1, [r6, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x01C]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp, #0x000]
	mov r7, r8
	str r7, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	ldrb r4, [r6, #0x10]
	str r4, [sp, #0x010]
	ldr r4, [r6, #0x14]
	str r4, [sp, #0x014]
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080EEB78: .4byte 0xFFFFFF00
_080EEB7C: .4byte 0x03000FCC
