	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x010]
	str r1, [sp, #0x014]
	str r2, [sp, #0x018]
	ldr r4, _080E0B1C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E0A00
	b _080E0BE6
_080E0A00:
	ldrb r2, [r3, #0x0B]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0B]
	ldr r3, _080E0B20 @ =0x03000FDC
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	ldr r1, _080E0B24 @ =0x00003EF0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	adds r0, r1, r0
	str r0, [sp, #0x01C]
	ldr r0, _080E0B28 @ =0x000052F0
	adds r0, r1, r0
	str r0, [sp, #0x020]
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldrb r7, [r2, #0x00]
	ldr r0, _080E0B2C @ =0x03001034
	movs r6, #0x01
	negs r6, r6
	movs r2, #0xA0
	lsls r2, r2, #0x02
	ldr r3, [r0, #0x00]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x01C]
	bl _call_via_r3
	lsls r0, r7, #0x01
	adds r0, r0, r7
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x020]
	adds r0, r2, r0
	adds r1, r0, #0x0
	subs r1, #0x0C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bge _080E0A68
	adds r0, #0xFF
_080E0A68:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	str r0, [sp, #0x004]
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	bge _080E0A78
	adds r0, #0xFF
_080E0A78:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	str r0, [sp, #0x008]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	bge _080E0A88
	adds r0, #0xFF
_080E0A88:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x018]
	adds r0, r0, r1
	str r0, [sp, #0x00C]
	ldr r0, [r4, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	add r4, sp, #0x008
	add r5, sp, #0x00C
	movs r1, #0x00
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8082C58
	subs r7, #0x01
	cmp r7, r6
	bne _080E0AB4
	b _080E0BE6
_080E0AB4:
	ldr r1, [sp, #0x020]
	adds r0, r1, #0x0
	adds r0, #0x0C
	str r0, [sp, #0x020]
	ldr r6, [sp, #0x004]
	ldr r4, [sp, #0x008]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bge _080E0AC8
	adds r0, #0xFF
_080E0AC8:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	str r0, [sp, #0x004]
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	bge _080E0AD8
	adds r0, #0xFF
_080E0AD8:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	str r0, [sp, #0x008]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	bge _080E0AE8
	adds r0, #0xFF
_080E0AE8:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x018]
	adds r0, r0, r1
	str r0, [sp, #0x00C]
	ldr r0, _080E0B1C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	add r2, sp, #0x008
	add r3, sp, #0x00C
	bl sub_8082C58
	ldr r0, [sp, #0x008]
	cmp r4, r0
	bge _080E0B30
	adds r5, r6, #0x0
	adds r3, r4, #0x0
	ldr r2, [sp, #0x004]
	adds r1, r0, #0x0
	ldr r4, [sp, #0x01C]
	b _080E0B3C
_080E0B1C: .4byte 0x03000FD8
_080E0B20: .4byte 0x03000FDC
_080E0B24: .4byte 0x00003EF0
_080E0B28: .4byte 0x000052F0
_080E0B2C: .4byte 0x03001034
_080E0B30:
	ldr r5, [sp, #0x004]
	adds r3, r0, #0x0
	adds r2, r6, #0x0
	adds r1, r4, #0x0
	ldr r4, [sp, #0x01C]
	adds r4, #0x01
_080E0B3C:
	subs r0, r7, #0x1
	mov r8, r0
	cmp r1, #0x00
	ble _080E0BDA
	cmp r3, #0x9F
	bgt _080E0BDA
	subs r6, r2, r5
	adds r1, #0x01
	subs r2, r1, r3
	mov r12, r2
	cmp r6, #0x00
	bge _080E0B5E
	movs r0, #0x01
	negs r0, r0
	mov r10, r0
	negs r6, r6
	b _080E0B62
_080E0B5E:
	movs r2, #0x01
	mov r10, r2
_080E0B62:
	cmp r3, #0x00
	bge _080E0B7E
	adds r2, r6, #0x0
	muls r2, r3
	subs r7, #0x01
	mov r8, r7
	cmp r2, #0x00
	bge _080E0B7A
_080E0B72:
	add r5, r10
	add r2, r12
	cmp r2, #0x00
	blt _080E0B72
_080E0B7A:
	movs r3, #0x00
	b _080E0B88
_080E0B7E:
	movs r2, #0x00
	lsls r0, r3, #0x02
	adds r4, r4, r0
	subs r7, #0x01
	mov r8, r7
_080E0B88:
	cmp r1, #0xA0
	ble _080E0B8E
	movs r1, #0xA0
_080E0B8E:
	subs r1, r1, r3
	subs r1, #0x01
	cmp r1, #0x00
	beq _080E0BDA
_080E0B96:
	subs r2, r2, r6
	subs r1, #0x01
	mov r9, r1
	ldrb r3, [r4, #0x00]
	adds r7, r4, #0x4
	cmp r2, #0x00
	bge _080E0BAC
_080E0BA4:
	add r5, r10
	add r2, r12
	cmp r2, #0x00
	blt _080E0BA4
_080E0BAC:
	cmp r5, #0x00
	bge _080E0BB4
	movs r0, #0x00
	b _080E0BC0
_080E0BB4:
	cmp r5, #0xEF
	bgt _080E0BBE
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	b _080E0BC0
_080E0BBE:
	movs r0, #0xF0
_080E0BC0:
	adds r1, r3, #0x0
	cmp r1, #0xFF
	beq _080E0BD0
	cmp r1, r0
	bcs _080E0BCE
	strb r0, [r4, #0x02]
	b _080E0BD2
_080E0BCE:
	strb r3, [r4, #0x02]
_080E0BD0:
	strb r0, [r4, #0x00]
_080E0BD2:
	adds r4, r7, #0x0
	mov r1, r9
	cmp r1, #0x00
	bne _080E0B96
_080E0BDA:
	mov r7, r8
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	beq _080E0BE6
	b _080E0AB4
_080E0BE6:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
