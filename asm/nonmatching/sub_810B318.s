	.syntax unified
	.text

	thumb_func_start sub_810B318
sub_810B318:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	movs r0, #0x0F
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r1, _0810B34C @ =0x03000FD8
	ldr r0, _0810B350 @ =0x000002C2
	add r0, r8
	ldr r3, [r1, #0x00]
	adds r0, r0, r3
	mov r12, r0
	mov r2, r8
	cmp r2, #0x01
	beq _0810B368
	cmp r2, #0x01
	bgt _0810B354
	cmp r2, #0x00
	beq _0810B35C
	b _0810B52C
_0810B34C: .4byte 0x03000FD8
_0810B350: .4byte 0x000002C2
_0810B354:
	mov r5, r8
	cmp r5, #0x02
	beq _0810B3E0
	b _0810B52C
_0810B35C:
	ldr r1, _0810B364 @ =0x00000343
	adds r0, r3, r1
	b _0810B526
	.byte 0x00, 0x00
_0810B364: .4byte 0x00000343
_0810B368:
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	movs r7, #0x7F
	ands r7, r0
	ldr r4, _0810B3C8 @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r4, r4, r5
	ldr r2, [r4, #0x00]
	ldr r0, _0810B3CC @ =0x08201134
	ldrb r1, [r0, #0x01]
	lsls r1, r1, #0x03
	ldr r5, _0810B3D0 @ =0x000002C6
	adds r0, r3, r5
	movs r3, #0x00
	ldsb r3, [r0, r3]
	movs r0, #0x0B
	muls r0, r3
	adds r0, r0, r1
	adds r0, #0x06
	movs r1, #0xFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldr r0, _0810B3D4 @ =0x08201131
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x03
	adds r0, #0x68
	subs r5, #0xC7
	adds r1, r5, #0x0
	ands r0, r1
	ldr r3, _0810B3D8 @ =0xFFFF8000
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldr r5, _0810B3DC @ =0x0000D09D
	adds r0, r5, #0x0
	strh r0, [r2, #0x00]
	adds r2, #0x04
	str r2, [r4, #0x00]
	b _0810B52C
_0810B3C8: .4byte 0x0300034C
_0810B3CC: .4byte byte_8201134 @ =0x08201134
_0810B3D0: .4byte 0x000002C6
_0810B3D4: .4byte byte_8201131 @ =0x08201131
_0810B3D8: .4byte 0xFFFF8000
_0810B3DC: .4byte 0x0000D09D
_0810B3E0:
	ldr r1, _0810B5DC @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r4, [r0, #0x00]
	ldr r5, _0810B5E0 @ =0x00000341
	adds r2, r3, r5
	ldrb r7, [r2, #0x00]
	cmp r7, #0x05
	ble _0810B3F6
	movs r7, #0x05
_0810B3F6:
	movs r6, #0x00
	cmp r6, r7
	blt _0810B3FE
	b _0810B514
_0810B3FE:
	ldr r0, _0810B5E4 @ =0x083BBDD0
	mov r10, r0
	movs r0, #0x01
	ands r0, r7
	cmp r7, #0x00
	ble _0810B40E
	cmp r0, #0x00
	beq _0810B458
_0810B40E:
	mov r5, r12
	movs r1, #0x00
	ldsb r1, [r5, r1]
	ldrb r0, [r2, #0x00]
	cmp r1, r0
	blt _0810B41C
	subs r1, r1, r0
_0810B41C:
	movs r2, #0xCB
	lsls r2, r2, #0x02
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r1, [r0, #0x02]
	movs r0, #0x21
	strh r0, [r4, #0x00]
	adds r4, #0x02
	movs r0, #0x6E
	strh r0, [r4, #0x00]
	adds r4, #0x02
	adds r2, r1, #0x0
	adds r2, #0xA8
	movs r0, #0x00
	cmp r1, #0x05
	beq _0810B446
	cmp r1, #0x07
	bne _0810B448
_0810B446:
	movs r0, #0x01
_0810B448:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r4, #0x04
	adds r6, #0x01
	cmp r6, r7
	bge _0810B514
_0810B458:
	movs r0, #0x0B
	adds r5, r6, #0x0
	muls r5, r0
	mov r3, r12
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r0, r6
	ldr r0, _0810B5E8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r3, _0810B5E0 @ =0x00000341
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _0810B476
	subs r1, r1, r0
_0810B476:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x21
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	movs r0, #0x6E
	strh r0, [r4, #0x00]
	adds r4, #0x02
	adds r2, r3, #0x0
	adds r2, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _0810B4A6
	cmp r3, #0x07
	bne _0810B4A8
_0810B4A6:
	movs r0, #0x01
_0810B4A8:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r4, #0x04
	adds r1, r6, #0x1
	movs r0, #0x0B
	adds r5, r1, #0x0
	muls r5, r0
	mov r2, r12
	movs r0, #0x00
	ldsb r0, [r2, r0]
	adds r1, r0, r1
	ldr r3, _0810B5E8 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldr r3, _0810B5E0 @ =0x00000341
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _0810B4D2
	subs r1, r1, r0
_0810B4D2:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x21
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	movs r0, #0x6E
	strh r0, [r4, #0x00]
	adds r4, #0x02
	adds r2, r3, #0x0
	adds r2, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _0810B502
	cmp r3, #0x07
	bne _0810B504
_0810B502:
	movs r0, #0x01
_0810B504:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r4, #0x04
	adds r6, #0x02
	cmp r6, r7
	blt _0810B458
_0810B514:
	ldr r5, _0810B5DC @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r5, r1
	str r4, [r0, #0x00]
	ldr r2, _0810B5E8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r3, _0810B5EC @ =0x00000345
	adds r0, r0, r3
_0810B526:
	ldrb r0, [r0, #0x00]
	movs r7, #0x7F
	ands r7, r0
_0810B52C:
	mov r5, r9
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bgt _0810B538
	b _0810B670
_0810B538:
	ldr r4, _0810B5DC @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r4, r4, r2
	ldr r2, [r4, #0x00]
	ldr r3, _0810B5F0 @ =0x08201131
	add r3, r8
	ldr r0, _0810B5F4 @ =0x08201137
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldrb r3, [r3, #0x00]
	adds r1, r1, r3
	lsls r1, r1, #0x03
	ldr r0, _0810B5F8 @ =0x08201134
	add r0, r8
	ldrb r3, [r0, #0x00]
	lsls r3, r3, #0x03
	movs r6, #0xFF
	movs r0, #0xFF
	ands r0, r3
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r1, #0x08
	ldr r5, _0810B5FC @ =0x000001FF
	adds r0, r5, #0x0
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldr r0, _0810B600 @ =0x0000B0A7
	adds r5, r0, #0x0
	strh r5, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _0810B604 @ =0x0820113A
	add r0, r8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x03
	adds r3, r3, r0
	ands r3, r6
	strh r3, [r2, #0x00]
	adds r2, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x02
	strh r5, [r2, #0x00]
	adds r2, #0x04
	str r2, [r4, #0x00]
	ldr r5, _0810B5E8 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _0810B608 @ =0x000002C5
	adds r0, r0, r1
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0810B620
	mov r2, r12
	movs r1, #0x00
	ldsb r1, [r2, r1]
	mov r3, r9
	movs r5, #0x16
	ldsh r0, [r3, r5]
	subs r0, #0x01
	cmp r1, r0
	bne _0810B5C8
	cmp r7, #0x00
	beq _0810B670
_0810B5C8:
	cmp r7, r1
	bge _0810B60C
	mov r0, r12
	strb r7, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x0C]
	bl sub_810AC60
	b _0810B670
	.byte 0x00, 0x00
_0810B5DC: .4byte 0x0300034C
_0810B5E0: .4byte 0x00000341
_0810B5E4: .4byte byte_83BBDD0 @ =0x083BBDD0
_0810B5E8: .4byte 0x03000FD8
_0810B5EC: .4byte 0x00000345
_0810B5F0: .4byte byte_8201131 @ =0x08201131
_0810B5F4: .4byte byte_8201137 @ =0x08201137
_0810B5F8: .4byte byte_8201134 @ =0x08201134
_0810B5FC: .4byte 0x000001FF
_0810B600: .4byte 0x0000B0A7
_0810B604: .4byte byte_820113A @ =0x0820113A
_0810B608: .4byte 0x000002C5
_0810B60C:
	subs r0, r7, #0x4
	cmp r1, r0
	bge _0810B670
	mov r2, r12
	strb r7, [r2, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	bl sub_810AC60
	b _0810B670
_0810B620:
	cmp r0, #0x04
	bne _0810B670
	mov r5, r12
	movs r1, #0x00
	ldsb r1, [r5, r1]
	cmp r7, r1
	bge _0810B65E
	mov r2, r9
	movs r3, #0x16
	ldsh r0, [r2, r3]
	adds r0, r7, r0
	subs r0, #0x05
	cmp r0, r1
	bne _0810B65E
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r5, #0x16
	ldsh r0, [r2, r5]
	cmp r1, r0
	blt _0810B654
	movs r0, #0x00
	mov r1, r12
	strb r0, [r1, #0x00]
_0810B654:
	mov r2, r9
	ldr r0, [r2, #0x0C]
	bl sub_810AC60
	b _0810B670
_0810B65E:
	subs r0, r7, #0x4
	cmp r1, r0
	bge _0810B670
	mov r3, r12
	strb r0, [r3, #0x00]
	mov r5, r9
	ldr r0, [r5, #0x0C]
	bl sub_810AC60
_0810B670:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
