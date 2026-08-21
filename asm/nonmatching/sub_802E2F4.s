	.syntax unified
	.text

	thumb_func_start sub_802E2F4
sub_802E2F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802E312
	b _0802E4B6
_0802E312:
	ldr r0, _0802E334 @ =0x0000020B
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0802E338
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r4, [r0, #0x00]
	b _0802E348
	.byte 0x00, 0x00
_0802E334: .4byte 0x0000020B
_0802E338:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r4, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
_0802E348:
	ldr r1, _0802E3A4 @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0802E358
	b _0802E4B6
_0802E358:
	ldr r0, _0802E3A8 @ =0x0000020B
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0802E384
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bne _0802E384
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bne _0802E384
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8047C18
	cmp r0, #0x00
	blt _0802E384
	b _0802E4A8
_0802E384:
	ldr r0, [r4, #0x0C]
	ldr r2, [r4, #0x34]
	subs r3, r0, r2
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	cmp r3, #0x00
	bgt _0802E3AC
	movs r5, #0x00
	mov r8, r5
	cmp r3, #0x00
	bge _0802E3B0
	movs r3, #0x40
	negs r3, r3
	mov r8, r3
	b _0802E3B0
_0802E3A4: .4byte 0x000002B5
_0802E3A8: .4byte 0x0000020B
_0802E3AC:
	movs r5, #0x40
	mov r8, r5
_0802E3B0:
	cmp r0, #0x00
	bgt _0802E3C4
	movs r3, #0x00
	mov r12, r3
	cmp r0, #0x00
	bge _0802E3C8
	movs r5, #0x40
	negs r5, r5
	mov r12, r5
	b _0802E3C8
_0802E3C4:
	movs r0, #0x40
	mov r12, r0
_0802E3C8:
	adds r6, r2, #0x0
	adds r5, r1, #0x0
	ldr r1, _0802E410 @ =0x0000023E
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, _0802E414 @ =0x00000353
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	asrs r1, r0
	cmp r1, #0x00
	bge _0802E3E6
	adds r1, #0x3F
_0802E3E6:
	asrs r7, r1, #0x06
	cmp r7, #0x00
	beq _0802E484
	movs r0, #0xD6
	lsls r0, r0, #0x02
	adds r3, r4, r0
	movs r1, #0x8F
	lsls r1, r1, #0x02
	add r1, r10
	mov r9, r1
_0802E3FA:
	add r6, r8
	add r5, r12
	mov r2, r8
	cmp r2, #0x00
	ble _0802E418
	ldr r0, [r4, #0x0C]
	cmp r6, r0
	blt _0802E428
	movs r0, #0x00
	mov r8, r0
	b _0802E428
_0802E410: .4byte 0x0000023E
_0802E414: .4byte 0x00000353
_0802E418:
	mov r1, r8
	cmp r1, #0x00
	bge _0802E428
	ldr r0, [r4, #0x0C]
	cmp r6, r0
	bgt _0802E428
	movs r2, #0x00
	mov r8, r2
_0802E428:
	mov r0, r12
	cmp r0, #0x00
	ble _0802E43A
	ldr r0, [r4, #0x10]
	cmp r5, r0
	blt _0802E44A
	movs r1, #0x00
	mov r12, r1
	b _0802E44A
_0802E43A:
	mov r2, r12
	cmp r2, #0x00
	bge _0802E44A
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bgt _0802E44A
	movs r0, #0x00
	mov r12, r0
_0802E44A:
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	mov r2, r9
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	str r6, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	str r5, [r0, #0x04]
	ldrh r2, [r3, #0x00]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x18
	adds r1, #0x01
	movs r0, #0xFF
	ands r1, r0
	lsls r1, r1, #0x04
	ldr r0, _0802E49C @ =0xFFFFF00F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	subs r7, #0x01
	cmp r7, #0x00
	bne _0802E3FA
_0802E484:
	ldr r3, _0802E4A0 @ =0x00000359
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0802E4A4 @ =0x0000020B
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	b _0802E4B2
_0802E49C: .4byte 0xFFFFF00F
_0802E4A0: .4byte 0x00000359
_0802E4A4: .4byte 0x0000020B
_0802E4A8:
	ldr r5, _0802E4C4 @ =0x00000359
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
_0802E4B2:
	ands r0, r1
	strb r0, [r2, #0x00]
_0802E4B6:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802E4C4: .4byte 0x00000359
